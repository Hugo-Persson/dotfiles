<task>
  Help me refactor this function into smaller, more manageable pieces.
</task>

<focus>
Focus on file and function: $ARGUMENTS 
</focus>

<context>
Use available tools to understand the codebase context
</context>
<instructions>
1. Identify logical sections
2. Break down into smaller functions
3. Each function should have a single responsibility
4. Use best practices
5. Ensure readability and maintainability
</instructions>

<requirements>
- Each function should be no longer than 80 lines
</requirements>

<example>Concrete examples</example>
<code>

```ts
// Before refactoring
import AsyncStorage from "@react-native-async-storage/async-storage";
import * as Sentry from "@sentry/react-native";
import {
	getPermissionsAsync,
	requestPermissionsAsync,
} from "expo-notifications";

const { logger, captureException } = Sentry;

import React, {
	createContext,
	type ReactNode,
	useCallback,
	useContext,
	useEffect,
	useState,
} from "react";
import { AppState, Platform } from "react-native";
import SensorSamplingModule, {
	type NativePermissionState,
} from "@/modules/sensor-sampling";
import HealthKitService from "../healthkit-service";

export const PermissionType = {
	NOTIFICATION: "notification",
	MOTION: "motion",
	APPLE_HEALTH: "appleHealth",
	BATTERY_OPTIMIZATION: "batteryOptimization",
} as const;

type PermissionTypeKeys = keyof typeof PermissionType;
type PermissionTypeValues = (typeof PermissionType)[PermissionTypeKeys];

const SKIPPED_PERMISSIONS_KEY = "@sine/skipped-permissions";

type PermissionContextType = {
	permissionsLoading: boolean;
	[PermissionType.NOTIFICATION]: NativePermissionState;
	[PermissionType.MOTION]: NativePermissionState;
	[PermissionType.APPLE_HEALTH]: NativePermissionState;
	[PermissionType.BATTERY_OPTIMIZATION]: NativePermissionState;
	skippedPermissions: PermissionTypeValues[];
	requestMotionPermission: () => Promise<NativePermissionState>;
	requestNotificationPermission: () => Promise<NativePermissionState>;
	requestDisableBatteryOptimization: () => Promise<NativePermissionState>;
	requestAppleHealthPermission: () => Promise<NativePermissionState>;
	checkMotionPermission: () => NativePermissionState;
	checkNotificationPermission: () => Promise<NativePermissionState>;
	checkDisableBatteryOptimization: () => Promise<NativePermissionState>;
	checkAppleHealthPermission: () => Promise<NativePermissionState>;
	onboardingNeeded: boolean;
	markPermissionAsSkipped: (
		permission: PermissionTypeValues,
		skip: boolean
	) => Promise<void>;
};

type Props = {
	children: ReactNode;
};
export const PermissionContext = createContext<PermissionContextType>({
	permissionsLoading: true,
	[PermissionType.NOTIFICATION]: "settingOverrideNeeded",
	[PermissionType.MOTION]: "settingOverrideNeeded",
	[PermissionType.APPLE_HEALTH]: "settingOverrideNeeded",
	[PermissionType.BATTERY_OPTIMIZATION]: "settingOverrideNeeded",
	skippedPermissions: [],
	requestMotionPermission: async () => "settingOverrideNeeded",
	requestNotificationPermission: async () => "settingOverrideNeeded",
	requestDisableBatteryOptimization: async () => "settingOverrideNeeded",
	requestAppleHealthPermission: async () => "settingOverrideNeeded",
	checkMotionPermission: () => "settingOverrideNeeded",
	checkNotificationPermission: async () => "settingOverrideNeeded",
	checkDisableBatteryOptimization: async () => "settingOverrideNeeded",
	checkAppleHealthPermission: async () => "settingOverrideNeeded",
	onboardingNeeded: true,
	markPermissionAsSkipped: () => {
		throw new Error("markPermissionAsSkipped is not implemented");
	},
});

export const PermissionProvider: React.FC<Props> = ({ children }) => {
	const [onboardingNeeded, setOnboardingNeeded] = useState<boolean>(true);
	const [permissionsLoading, setPermissionsLoading] = useState<boolean>(true);
	const [notificationPermissionState, setNotificationPermissionState] =
		useState<NativePermissionState>("settingOverrideNeeded");
	const [motionPermissionState, setMotionPermissionState] =
		useState<NativePermissionState>("settingOverrideNeeded");
	const [appleHealthPermissionState, setAppleHealthPermissionState] =
		useState<NativePermissionState>("settingOverrideNeeded");
	const [disableBatteryOptimization, setDisableBatteryOptimization] =
		useState<NativePermissionState>("settingOverrideNeeded");
	const [skippedPermissions, setSkippedPermissions] = useState<
		PermissionTypeValues[]
	>([]);

	const checkDisableBatteryOptimization = useCallback(async () => {
		if (Platform.OS === "ios") {
			setDisableBatteryOptimization("permissionGranted");
			return "permissionGranted";
		}
		try {
			const permission =
				await SensorSamplingModule.getDisableBatteryOptimizations();

			setDisableBatteryOptimization(permission);
			return permission;
		} catch (error) {
			captureException(error);
			logger.error("Error checking battery optimization permission", {
				error,
				platform: Platform.OS,
			});
		}
		return "settingOverrideNeeded";
	}, []);

	const requestDisableBatteryOptimization = useCallback(async () => {
		if (Platform.OS === "ios") {
			setDisableBatteryOptimization("permissionGranted");
			return "permissionGranted";
		}
		try {
			const permission =
				await SensorSamplingModule.requestDisableBatteryOptimizations();

			logger.debug("Battery optimization permission requested", {
				permission,
				platform: Platform.OS,
			});
			setDisableBatteryOptimization(permission);
			return permission;
		} catch (error) {
			captureException(error);
			logger.error("Error requesting battery optimization permission", {
				error,
				platform: Platform.OS,
			});
		}
		return "settingOverrideNeeded";
	}, []);

	const checkMotionPermission = useCallback(() => {
		try {
			const motionPermission = SensorSamplingModule.getMotionPermissionState();

			setMotionPermissionState(motionPermission);
			return motionPermission;
		} catch (_error) {
			return "settingOverrideNeeded";
		}
	}, []);

	const requestMotionPermission = useCallback(async () => {
		try {
			const motionPermission =
				await SensorSamplingModule.requestMotionPermission();

			setMotionPermissionState(motionPermission);
			return motionPermission;
		} catch (_error) {
			return "settingOverrideNeeded";
		}
	}, []);

	const checkNotificationPermission = useCallback(async () => {
		try {
			const permissionResult = await getPermissionsAsync();
			const status = permissionResult.status;
			logger.debug("Notification permission status checked", {
				status: permissionResult.status,
				canAskAgain: permissionResult.canAskAgain,
			});
			let permissionState: NativePermissionState;

			if (status === "granted") {
				permissionState = "permissionGranted";
			} else if (status === "undetermined" || permissionResult.canAskAgain) {
				permissionState = "askForPermission";
			} else {
				permissionState = "settingOverrideNeeded";
			}

			setNotificationPermissionState(permissionState);
			return permissionState;
		} catch (_error) {
			return "settingOverrideNeeded";
		}
	}, []);

	const markPermissionAsSkipped = useCallback(
		async (permission: PermissionTypeValues, skip: boolean) => {
			try {
				let updatedSkippedPermissions: PermissionTypeValues[];
				if (skip) {
					updatedSkippedPermissions = [...skippedPermissions, permission];
				} else {
					updatedSkippedPermissions = skippedPermissions.filter(
						(p) => p !== permission
					);
				}
				setSkippedPermissions(updatedSkippedPermissions);

				if (skip) {
					// Set the corresponding permission state to skipped
					switch (permission) {
						case PermissionType.NOTIFICATION:
							setNotificationPermissionState("skipped");
							break;
						case PermissionType.MOTION:
							setMotionPermissionState("skipped");
							break;
						case PermissionType.APPLE_HEALTH:
							setAppleHealthPermissionState("skipped");
							break;
						case PermissionType.BATTERY_OPTIMIZATION:
							setDisableBatteryOptimization("skipped");
							break;
						default:
					}
				}

				await AsyncStorage.setItem(
					SKIPPED_PERMISSIONS_KEY,
					JSON.stringify(updatedSkippedPermissions)
				);
			} catch (error) {
				captureException(error);
				logger.error("Error marking permission as skipped", {
					permissionType: "notification",
					error,
				});
			}
		},
		[skippedPermissions]
	);

	const requestNotificationPermission = useCallback(async () => {
		try {
			const { status } = await requestPermissionsAsync();
			let permissionState: NativePermissionState;

			if (status === "granted") {
				permissionState = "permissionGranted";
			} else if (status === "denied") {
				permissionState = "askForPermission";
			} else {
				permissionState = "settingOverrideNeeded";
			}
			await markPermissionAsSkipped(PermissionType.NOTIFICATION, false);

			setNotificationPermissionState(permissionState);
			return permissionState;
		} catch (_error) {
			return "settingOverrideNeeded";
		}
	}, [markPermissionAsSkipped]);

	const checkAppleHealthPermission = useCallback(async () => {
		if (Platform.OS === "android") {
			setAppleHealthPermissionState("permissionGranted");
			return "permissionGranted";
		}
		try {
			// Check if permissions are granted in the health kit service
			const isGranted = await HealthKitService.isPermissionGranted();
			const permissionState: NativePermissionState = isGranted
				? "permissionGranted"
				: "askForPermission";

			setAppleHealthPermissionState(permissionState);
			return permissionState;
		} catch (error) {
			captureException(error);
			logger.error("Error checking Apple Health permission", {
				error,
				platform: Platform.OS,
			});
		}
		return "settingOverrideNeeded";
	}, []);

	const requestAppleHealthPermission = useCallback(async () => {
		if (Platform.OS === "android") {
			setAppleHealthPermissionState("permissionGranted");
			return "permissionGranted";
		}
		try {
			const success = await HealthKitService.requestPermissions();

			const permissionState: NativePermissionState = success
				? "permissionGranted"
				: "settingOverrideNeeded";

			logger.debug("Apple Health permission requested", {
				success,
				permissionState,
				platform: Platform.OS,
			});

			await markPermissionAsSkipped(PermissionType.APPLE_HEALTH, false);
			setAppleHealthPermissionState(permissionState);
			return permissionState;
		} catch (error) {
			captureException(error);
			logger.error("Error requesting Apple Health permission", {
				error,
				platform: Platform.OS,
			});
		}
		return "settingOverrideNeeded";
	}, [markPermissionAsSkipped]);
	useEffect(() => {
		const states = [notificationPermissionState];
		if (Platform.OS === "ios") {
			states.push(motionPermissionState);
			states.push(appleHealthPermissionState);
		} else {
			states.push(disableBatteryOptimization);
		}
		const allGranted = states.every(
			(state) => state === "permissionGranted" || state === "skipped"
		);
		setOnboardingNeeded(!allGranted);
	}, [
		notificationPermissionState,
		motionPermissionState,
		disableBatteryOptimization,
		appleHealthPermissionState,
	]);

	useEffect(() => {
		const loadSkippedPermissions = async () => {
			try {
				const stored = await AsyncStorage.getItem(SKIPPED_PERMISSIONS_KEY);
				if (stored) {
					const skipped = JSON.parse(stored);
					setSkippedPermissions(skipped);
					return skipped;
				}
				return [];
			} catch (error) {
				captureException(error);
				logger.error("Error loading skipped permissions", { error });
				return [];
			}
		};

		const checkAllPermissions = async () => {
			try {
				const skipped = await loadSkippedPermissions();

				if (skipped.includes(PermissionType.MOTION)) {
					setMotionPermissionState("skipped");
				} else {
					await checkMotionPermission();
				}

				if (skipped.includes(PermissionType.NOTIFICATION)) {
					setNotificationPermissionState("skipped");
				} else {
					await checkNotificationPermission();
				}

				if (skipped.includes(PermissionType.APPLE_HEALTH)) {
					setAppleHealthPermissionState("skipped");
				} else {
					await checkAppleHealthPermission();
				}

				if (skipped.includes(PermissionType.BATTERY_OPTIMIZATION)) {
					setDisableBatteryOptimization("skipped");
				} else {
					await checkDisableBatteryOptimization();
				}
			} catch (error) {
				logger.error("Error checking permissions", { error });
				Sentry.captureException(error);
			} finally {
				setPermissionsLoading(false);
			}
		};

		void checkAllPermissions();
	}, [
		checkMotionPermission,
		checkNotificationPermission,
		checkDisableBatteryOptimization,
		checkAppleHealthPermission,
	]);

	useEffect(() => {
		const checkPermissionsOnForeground = async (): Promise<void> => {
			try {
				const stored = await AsyncStorage.getItem(SKIPPED_PERMISSIONS_KEY);
				const skipped = stored ? JSON.parse(stored) : [];

				if (!skipped.includes(PermissionType.MOTION)) {
					checkMotionPermission();
				}

				if (!skipped.includes(PermissionType.NOTIFICATION)) {
					await checkNotificationPermission();
				}

				if (!skipped.includes(PermissionType.APPLE_HEALTH)) {
					await checkAppleHealthPermission();
				}

				if (!skipped.includes(PermissionType.BATTERY_OPTIMIZATION)) {
					await checkDisableBatteryOptimization();
				}

				logger.debug("Permissions refreshed on app foreground");
			} catch (error) {
				logger.error("Error refreshing permissions on foreground", { error });
				captureException(error);
			}
		};

		const handleAppStateChange = (nextAppState: string): void => {
			if (nextAppState === "active") {
				void checkPermissionsOnForeground();
			}
		};

		const subscription = AppState.addEventListener(
			"change",
			handleAppStateChange
		);

		return (): void => {
			subscription?.remove();
		};
	}, [
		checkMotionPermission,
		checkNotificationPermission,
		checkDisableBatteryOptimization,
		checkAppleHealthPermission,
	]);

	return (
		<PermissionContext.Provider
			value={{
				onboardingNeeded,
				permissionsLoading,
				[PermissionType.NOTIFICATION]: notificationPermissionState,
				[PermissionType.MOTION]: motionPermissionState,
				[PermissionType.APPLE_HEALTH]: appleHealthPermissionState,
				[PermissionType.BATTERY_OPTIMIZATION]: disableBatteryOptimization,
				skippedPermissions,
				requestMotionPermission,
				requestNotificationPermission,
				requestDisableBatteryOptimization,
				requestAppleHealthPermission,
				checkMotionPermission,
				checkNotificationPermission,
				checkDisableBatteryOptimization,
				checkAppleHealthPermission,
				markPermissionAsSkipped,
			}}
		>
			{children}
		</PermissionContext.Provider>
	);
};

export const usePermissions = () => {
	const context = useContext(PermissionContext);

	if (!context) {
		throw new Error("usePermissions must be used within a PermissionProvider");
	}

	return context;
};

// After refactoring
import AsyncStorage from "@react-native-async-storage/async-storage";
import * as Sentry from "@sentry/react-native";
import {
	getPermissionsAsync,
	requestPermissionsAsync,
} from "expo-notifications";

const { logger, captureException } = Sentry;

import React, {
	createContext,
	type ReactNode,
	useCallback,
	useContext,
	useEffect,
	useMemo,
	useState,
} from "react";
import { AppState, Platform } from "react-native";
import SensorSamplingModule, {
	type NativePermissionState,
} from "@/modules/sensor-sampling";
import HealthKitService from "../healthkit-service";

export const PermissionType = {
	NOTIFICATION: "notification",
	MOTION: "motion",
	APPLE_HEALTH: "appleHealth",
	BATTERY_OPTIMIZATION: "batteryOptimization",
} as const;

type PermissionTypeKeys = keyof typeof PermissionType;
type PermissionTypeValues = (typeof PermissionType)[PermissionTypeKeys];

type PermissionSetterMap = {
	[PermissionType.NOTIFICATION]: (state: NativePermissionState) => void;
	[PermissionType.MOTION]: (state: NativePermissionState) => void;
	[PermissionType.APPLE_HEALTH]: (state: NativePermissionState) => void;
	[PermissionType.BATTERY_OPTIMIZATION]: (state: NativePermissionState) => void;
};

const SKIPPED_PERMISSIONS_KEY = "@sine/skipped-permissions";

const loadSkippedPermissions = async (): Promise<PermissionTypeValues[]> => {
	try {
		const stored = await AsyncStorage.getItem(SKIPPED_PERMISSIONS_KEY);
		if (stored) {
			return JSON.parse(stored);
		}
		return [];
	} catch (error) {
		captureException(error);
		logger.error("Error loading skipped permissions", { error });
		return [];
	}
};

const saveSkippedPermissions = async (
	permissions: PermissionTypeValues[]
): Promise<void> => {
	try {
		await AsyncStorage.setItem(
			SKIPPED_PERMISSIONS_KEY,
			JSON.stringify(permissions)
		);
	} catch (error) {
		captureException(error);
		logger.error("Error saving skipped permissions", { error });
	}
};

const setPermissionStateByType = (
	permissionType: PermissionTypeValues,
	state: NativePermissionState,
	setterMap: PermissionSetterMap
): void => {
	switch (permissionType) {
		case PermissionType.NOTIFICATION:
			setterMap[PermissionType.NOTIFICATION](state);
			break;
		case PermissionType.MOTION:
			setterMap[PermissionType.MOTION](state);
			break;
		case PermissionType.APPLE_HEALTH:
			setterMap[PermissionType.APPLE_HEALTH](state);
			break;
		case PermissionType.BATTERY_OPTIMIZATION:
			setterMap[PermissionType.BATTERY_OPTIMIZATION](state);
			break;
		default:
	}
};

type PermissionContextType = {
	permissionsLoading: boolean;
	[PermissionType.NOTIFICATION]: NativePermissionState;
	[PermissionType.MOTION]: NativePermissionState;
	[PermissionType.APPLE_HEALTH]: NativePermissionState;
	[PermissionType.BATTERY_OPTIMIZATION]: NativePermissionState;
	skippedPermissions: PermissionTypeValues[];
	requestMotionPermission: () => Promise<NativePermissionState>;
	requestNotificationPermission: () => Promise<NativePermissionState>;
	requestDisableBatteryOptimization: () => Promise<NativePermissionState>;
	requestAppleHealthPermission: () => Promise<NativePermissionState>;
	checkMotionPermission: () => NativePermissionState;
	checkNotificationPermission: () => Promise<NativePermissionState>;
	checkDisableBatteryOptimization: () => Promise<NativePermissionState>;
	checkAppleHealthPermission: () => Promise<NativePermissionState>;
	onboardingNeeded: boolean;
	markPermissionAsSkipped: (
		permission: PermissionTypeValues,
		skip: boolean
	) => Promise<void>;
};

type Props = {
	children: ReactNode;
};
export const PermissionContext = createContext<PermissionContextType>({
	permissionsLoading: true,
	[PermissionType.NOTIFICATION]: "settingOverrideNeeded",
	[PermissionType.MOTION]: "settingOverrideNeeded",
	[PermissionType.APPLE_HEALTH]: "settingOverrideNeeded",
	[PermissionType.BATTERY_OPTIMIZATION]: "settingOverrideNeeded",
	skippedPermissions: [],
	requestMotionPermission: async () => "settingOverrideNeeded",
	requestNotificationPermission: async () => "settingOverrideNeeded",
import AsyncStorage from "@react-native-async-storage/async-storage";
import * as Sentry from "@sentry/react-native";
import {
	getPermissionsAsync,
	requestPermissionsAsync,
} from "expo-notifications";

const { logger, captureException } = Sentry;

import React, {
	createContext,
	type ReactNode,
	useCallback,
	useContext,
	useEffect,
	useMemo,
	useState,
} from "react";
import { AppState, Platform } from "react-native";
import SensorSamplingModule, {
	type NativePermissionState,
} from "@/modules/sensor-sampling";
import HealthKitService from "../healthkit-service";

export const PermissionType = {
	NOTIFICATION: "notification",
	MOTION: "motion",
	APPLE_HEALTH: "appleHealth",
	BATTERY_OPTIMIZATION: "batteryOptimization",
} as const;

type PermissionTypeKeys = keyof typeof PermissionType;
type PermissionTypeValues = (typeof PermissionType)[PermissionTypeKeys];

type PermissionSetterMap = {
	[PermissionType.NOTIFICATION]: (state: NativePermissionState) => void;
	[PermissionType.MOTION]: (state: NativePermissionState) => void;
	[PermissionType.APPLE_HEALTH]: (state: NativePermissionState) => void;
	[PermissionType.BATTERY_OPTIMIZATION]: (state: NativePermissionState) => void;
};

const SKIPPED_PERMISSIONS_KEY = "@sine/skipped-permissions";

const loadSkippedPermissions = async (): Promise<PermissionTypeValues[]> => {
	try {
		const stored = await AsyncStorage.getItem(SKIPPED_PERMISSIONS_KEY);
		if (stored) {
			return JSON.parse(stored);
		}
		return [];
	} catch (error) {
		captureException(error);
		logger.error("Error loading skipped permissions", { error });
		return [];
	}
};

const saveSkippedPermissions = async (
	permissions: PermissionTypeValues[]
): Promise<void> => {
	try {
		await AsyncStorage.setItem(
			SKIPPED_PERMISSIONS_KEY,
			JSON.stringify(permissions)
		);
	} catch (error) {
		captureException(error);
		logger.error("Error saving skipped permissions", { error });
	}
};

const setPermissionStateByType = (
	permissionType: PermissionTypeValues,
	state: NativePermissionState,
	setterMap: PermissionSetterMap
): void => {
	switch (permissionType) {
		case PermissionType.NOTIFICATION:
			setterMap[PermissionType.NOTIFICATION](state);
			break;
		case PermissionType.MOTION:
			setterMap[PermissionType.MOTION](state);
			break;
		case PermissionType.APPLE_HEALTH:
			setterMap[PermissionType.APPLE_HEALTH](state);
			break;
		case PermissionType.BATTERY_OPTIMIZATION:
			setterMap[PermissionType.BATTERY_OPTIMIZATION](state);
			break;
		default:
	}
};

type PermissionContextType = {
	permissionsLoading: boolean;
	[PermissionType.NOTIFICATION]: NativePermissionState;
	[PermissionType.MOTION]: NativePermissionState;
	[PermissionType.APPLE_HEALTH]: NativePermissionState;
	[PermissionType.BATTERY_OPTIMIZATION]: NativePermissionState;
	skippedPermissions: PermissionTypeValues[];
	requestMotionPermission: () => Promise<NativePermissionState>;
	requestNotificationPermission: () => Promise<NativePermissionState>;
	requestDisableBatteryOptimization: () => Promise<NativePermissionState>;
	requestAppleHealthPermission: () => Promise<NativePermissionState>;
	checkMotionPermission: () => NativePermissionState;
	checkNotificationPermission: () => Promise<NativePermissionState>;
	checkDisableBatteryOptimization: () => Promise<NativePermissionState>;
	checkAppleHealthPermission: () => Promise<NativePermissionState>;
	onboardingNeeded: boolean;
	markPermissionAsSkipped: (
		permission: PermissionTypeValues,
		skip: boolean
	) => Promise<void>;
};

type Props = {
	children: ReactNode;
};
export const PermissionContext = createContext<PermissionContextType>({
	permissionsLoading: true,
	[PermissionType.NOTIFICATION]: "settingOverrideNeeded",
	[PermissionType.MOTION]: "settingOverrideNeeded",
	[PermissionType.APPLE_HEALTH]: "settingOverrideNeeded",
	[PermissionType.BATTERY_OPTIMIZATION]: "settingOverrideNeeded",
	skippedPermissions: [],
	requestMotionPermission: async () => "settingOverrideNeeded",
	requestNotificationPermission: async () => "settingOverrideNeeded",
	requestDisableBatteryOptimization: async () => "settingOverrideNeeded",
	requestAppleHealthPermission: async () => "settingOverrideNeeded",
	checkMotionPermission: () => "settingOverrideNeeded",
	checkNotificationPermission: async () => "settingOverrideNeeded",
	checkDisableBatteryOptimization: async () => "settingOverrideNeeded",
	checkAppleHealthPermission: async () => "settingOverrideNeeded",
	onboardingNeeded: true,
	markPermissionAsSkipped: () => {
		throw new Error("markPermissionAsSkipped is not implemented");
	},
});

function useBatteryOptimization() {
	const [disableBatteryOptimization, setDisableBatteryOptimization] =
		useState<NativePermissionState>("settingOverrideNeeded");

	const checkDisableBatteryOptimization = useCallback(async () => {
		if (Platform.OS === "ios") {
			setDisableBatteryOptimization("permissionGranted");
			return "permissionGranted";
		}
		try {
			const permission =
				await SensorSamplingModule.getDisableBatteryOptimizations();
			setDisableBatteryOptimization(permission);
			return permission;
		} catch (error) {
			captureException(error);
			logger.error("Error checking battery optimization permission", {
				error,
				platform: Platform.OS,
			});
		}
		return "settingOverrideNeeded";
	}, []);

	const requestDisableBatteryOptimization = useCallback(async () => {
		if (Platform.OS === "ios") {
			setDisableBatteryOptimization("permissionGranted");
			return "permissionGranted";
		}
		try {
			const permission =
				await SensorSamplingModule.requestDisableBatteryOptimizations();
			logger.debug("Battery optimization permission requested", {
				permission,
				platform: Platform.OS,
			});
			setDisableBatteryOptimization(permission);
			return permission;
		} catch (error) {
			captureException(error);
			logger.error("Error requesting battery optimization permission", {
				error,
				platform: Platform.OS,
			});
		}
		return "settingOverrideNeeded";
	}, []);

	return {
		disableBatteryOptimization,
		checkDisableBatteryOptimization,
		requestDisableBatteryOptimization,
		setDisableBatteryOptimization,
	};
}

function useNotificationPermission() {
	const [notificationPermissionState, setNotificationPermissionState] =
		useState<NativePermissionState>("settingOverrideNeeded");

	const checkNotificationPermission = useCallback(async () => {
		try {
			const permissionResult = await getPermissionsAsync();
			const status = permissionResult.status;
			logger.debug("Notification permission status checked", {
				status: permissionResult.status,
				canAskAgain: permissionResult.canAskAgain,
			});
			let permissionState: NativePermissionState;

			if (status === "granted") {
				permissionState = "permissionGranted";
			} else if (status === "undetermined" || permissionResult.canAskAgain) {
				permissionState = "askForPermission";
			} else {
				permissionState = "settingOverrideNeeded";
			}

			setNotificationPermissionState(permissionState);
			return permissionState;
		} catch (_error) {
			return "settingOverrideNeeded";
		}
	}, []);

	const requestNotificationPermission = useCallback(async () => {
		try {
			const { status } = await requestPermissionsAsync();
			let permissionState: NativePermissionState;

			if (status === "granted") {
				permissionState = "permissionGranted";
			} else if (status === "denied") {
				permissionState = "askForPermission";
			} else {
				permissionState = "settingOverrideNeeded";
			}

			setNotificationPermissionState(permissionState);
			return permissionState;
		} catch (_error) {
			return "settingOverrideNeeded";
		}
	}, []);

	return {
		notificationPermissionState,
		checkNotificationPermission,
		requestNotificationPermission,
		setNotificationPermissionState,
	};
}

function useAppleHealthPermission() {
	const [appleHealthPermissionState, setAppleHealthPermissionState] =
		useState<NativePermissionState>("settingOverrideNeeded");

	const checkAppleHealthPermission = useCallback(async () => {
		if (Platform.OS === "android") {
			setAppleHealthPermissionState("permissionGranted");
			return "permissionGranted";
		}
		try {
			const isGranted = await HealthKitService.isPermissionGranted();
			const permissionState: NativePermissionState = isGranted
				? "permissionGranted"
				: "askForPermission";

			setAppleHealthPermissionState(permissionState);
			return permissionState;
		} catch (error) {
			captureException(error);
			logger.error("Error checking Apple Health permission", {
				error,
				platform: Platform.OS,
			});
		}
		return "settingOverrideNeeded";
	}, []);

	const requestAppleHealthPermission = useCallback(async () => {
		if (Platform.OS === "android") {
			setAppleHealthPermissionState("permissionGranted");
			return "permissionGranted";
		}
		try {
			const success = await HealthKitService.requestPermissions();

			const permissionState: NativePermissionState = success
				? "permissionGranted"
				: "settingOverrideNeeded";

			logger.debug("Apple Health permission requested", {
				success,
				permissionState,
				platform: Platform.OS,
			});

			setAppleHealthPermissionState(permissionState);
			return permissionState;
		} catch (error) {
			captureException(error);
			logger.error("Error requesting Apple Health permission", {
				error,
				platform: Platform.OS,
			});
		}
		return "settingOverrideNeeded";
	}, []);

	return {
		appleHealthPermissionState,
		checkAppleHealthPermission,
		requestAppleHealthPermission,
		setAppleHealthPermissionState,
	};
}

function useOnboardingStatus(
	notificationPermissionState: NativePermissionState,
	motionPermissionState: NativePermissionState,
	disableBatteryOptimization: NativePermissionState,
	appleHealthPermissionState: NativePermissionState
) {
	const [onboardingNeeded, setOnboardingNeeded] = useState<boolean>(true);

	useEffect(() => {
		const states = [notificationPermissionState];
		if (Platform.OS === "ios") {
			states.push(motionPermissionState);
			states.push(appleHealthPermissionState);
		} else {
			states.push(disableBatteryOptimization);
		}
		const allGranted = states.every(
			(state) => state === "permissionGranted" || state === "skipped"
		);
		setOnboardingNeeded(!allGranted);
	}, [
		notificationPermissionState,
		motionPermissionState,
		disableBatteryOptimization,
		appleHealthPermissionState,
	]);

	return onboardingNeeded;
}

type PermissionCheckers = {
	checkMotionPermission: () => NativePermissionState;
	checkNotificationPermission: () => Promise<NativePermissionState>;
	checkAppleHealthPermission: () => Promise<NativePermissionState>;
	checkDisableBatteryOptimization: () => Promise<NativePermissionState>;
};

function usePermissionInitialization(
	checkers: PermissionCheckers,
	setterMap: PermissionSetterMap
) {
	const [permissionsLoading, setPermissionsLoading] = useState<boolean>(true);

	useEffect(() => {
		const checkAllPermissions = async () => {
			try {
				const skipped = await loadSkippedPermissions();

				if (skipped.includes(PermissionType.MOTION)) {
					setterMap[PermissionType.MOTION]("skipped");
				} else {
					checkers.checkMotionPermission();
				}

				if (skipped.includes(PermissionType.NOTIFICATION)) {
					setterMap[PermissionType.NOTIFICATION]("skipped");
				} else {
					await checkers.checkNotificationPermission();
				}

				if (skipped.includes(PermissionType.APPLE_HEALTH)) {
					setterMap[PermissionType.APPLE_HEALTH]("skipped");
				} else {
					await checkers.checkAppleHealthPermission();
				}

				if (skipped.includes(PermissionType.BATTERY_OPTIMIZATION)) {
					setterMap[PermissionType.BATTERY_OPTIMIZATION]("skipped");
				} else {
					await checkers.checkDisableBatteryOptimization();
				}
			} catch (error) {
				logger.error("Error checking permissions", { error });
				Sentry.captureException(error);
			} finally {
				setPermissionsLoading(false);
			}
		};

		void checkAllPermissions();
	}, [checkers, setterMap]);

	return { permissionsLoading };
}

function useAppStatePermissionRefresh(checkers: PermissionCheckers) {
	useEffect(() => {
		const checkPermissionsOnForeground = async (): Promise<void> => {
			try {
				const skipped = await loadSkippedPermissions();

				if (!skipped.includes(PermissionType.MOTION)) {
					checkers.checkMotionPermission();
				}

				if (!skipped.includes(PermissionType.NOTIFICATION)) {
					await checkers.checkNotificationPermission();
				}

				if (!skipped.includes(PermissionType.APPLE_HEALTH)) {
					await checkers.checkAppleHealthPermission();
				}

				if (!skipped.includes(PermissionType.BATTERY_OPTIMIZATION)) {
					await checkers.checkDisableBatteryOptimization();
				}

				logger.debug("Permissions refreshed on app foreground");
			} catch (error) {
				logger.error("Error refreshing permissions on foreground", { error });
				captureException(error);
			}
		};

		const handleAppStateChange = (nextAppState: string): void => {
			if (nextAppState === "active") {
				void checkPermissionsOnForeground();
			}
		};

		const subscription = AppState.addEventListener(
			"change",
			handleAppStateChange
		);

		return (): void => {
			subscription?.remove();
		};
	}, [checkers]);
}

function useMotionPermission() {
	const [motionPermissionState, setMotionPermissionState] =
		useState<NativePermissionState>("settingOverrideNeeded");

	const checkMotionPermission = useCallback(() => {
		try {
			const motionPermission = SensorSamplingModule.getMotionPermissionState();
			setMotionPermissionState(motionPermission);
			return motionPermission;
		} catch (_error) {
			return "settingOverrideNeeded";
		}
	}, []);

	const requestMotionPermission = useCallback(async () => {
		try {
			const motionPermission =
				await SensorSamplingModule.requestMotionPermission();
			setMotionPermissionState(motionPermission);
			return motionPermission;
		} catch (_error) {
			return "settingOverrideNeeded";
		}
	}, []);

	return {
		motionPermissionState,
		checkMotionPermission,
		requestMotionPermission,
		setMotionPermissionState,
	};
}

export const PermissionProvider: React.FC<Props> = ({ children }) => {
	const [skippedPermissions, setSkippedPermissions] = useState<
		PermissionTypeValues[]
	>([]);

	const {
		disableBatteryOptimization,
		checkDisableBatteryOptimization,
		requestDisableBatteryOptimization,
		setDisableBatteryOptimization,
	} = useBatteryOptimization();
	const {
		motionPermissionState,
		checkMotionPermission,
		requestMotionPermission,
		setMotionPermissionState,
	} = useMotionPermission();
	const {
		notificationPermissionState,
		checkNotificationPermission,
		requestNotificationPermission,
		setNotificationPermissionState,
	} = useNotificationPermission();
	const {
		appleHealthPermissionState,
		checkAppleHealthPermission,
		requestAppleHealthPermission,
		setAppleHealthPermissionState,
	} = useAppleHealthPermission();

	const setterMap = useMemo(
		() => ({
			[PermissionType.NOTIFICATION]: setNotificationPermissionState,
			[PermissionType.MOTION]: setMotionPermissionState,
			[PermissionType.APPLE_HEALTH]: setAppleHealthPermissionState,
			[PermissionType.BATTERY_OPTIMIZATION]: setDisableBatteryOptimization,
		}),
		[
			setNotificationPermissionState,
			setMotionPermissionState,
			setAppleHealthPermissionState,
			setDisableBatteryOptimization,
		]
	);

	const onboardingNeeded = useOnboardingStatus(
		notificationPermissionState,
		motionPermissionState,
		disableBatteryOptimization,
		appleHealthPermissionState
	);

	const checkers = {
		checkMotionPermission,
		checkNotificationPermission,
		checkAppleHealthPermission,
		checkDisableBatteryOptimization,
	};

	const { permissionsLoading } = usePermissionInitialization(
		checkers,
		setterMap
	);

	useAppStatePermissionRefresh(checkers);

	const markPermissionAsSkipped = useCallback(
		async (permission: PermissionTypeValues, skip: boolean) => {
			try {
				let updatedSkippedPermissions: PermissionTypeValues[];
				if (skip) {
					updatedSkippedPermissions = [...skippedPermissions, permission];
				} else {
					updatedSkippedPermissions = skippedPermissions.filter(
						(p) => p !== permission
					);
				}
				setSkippedPermissions(updatedSkippedPermissions);

				if (skip) {
					setPermissionStateByType(permission, "skipped", setterMap);
				}

				await saveSkippedPermissions(updatedSkippedPermissions);
			} catch (error) {
				captureException(error);
				logger.error("Error marking permission as skipped", {
					permissionType: permission,
					error,
				});
			}
		},
		[skippedPermissions, setterMap]
	);

	const wrappedRequestNotificationPermission = useCallback(async () => {
		const result = await requestNotificationPermission();
		await markPermissionAsSkipped(PermissionType.NOTIFICATION, false);
		return result;
	}, [requestNotificationPermission, markPermissionAsSkipped]);

	const wrappedRequestAppleHealthPermission = useCallback(async () => {
		const result = await requestAppleHealthPermission();
		await markPermissionAsSkipped(PermissionType.APPLE_HEALTH, false);
		return result;
	}, [requestAppleHealthPermission, markPermissionAsSkipped]);
	useEffect(() => {
		const initializeSkippedPermissions = async () => {
			const skipped = await loadSkippedPermissions();
			setSkippedPermissions(skipped);
		};
		void initializeSkippedPermissions();
	}, []);

	return (
		<PermissionContext.Provider
			value={{
				onboardingNeeded,
				permissionsLoading,
				[PermissionType.NOTIFICATION]: notificationPermissionState,
				[PermissionType.MOTION]: motionPermissionState,
				[PermissionType.APPLE_HEALTH]: appleHealthPermissionState,
				[PermissionType.BATTERY_OPTIMIZATION]: disableBatteryOptimization,
				skippedPermissions,
				requestMotionPermission,
				requestNotificationPermission: wrappedRequestNotificationPermission,
				requestDisableBatteryOptimization,
				requestAppleHealthPermission: wrappedRequestAppleHealthPermission,
				checkMotionPermission,
				checkNotificationPermission,
				checkDisableBatteryOptimization,
				checkAppleHealthPermission,
				markPermissionAsSkipped,
			}}
		>
			{children}
		</PermissionContext.Provider>
	);
};

export const usePermissions = () => {
	const context = useContext(PermissionContext);

	if (!context) {
		throw new Error("usePermissions must be used within a PermissionProvider");
	}

	return context;
};
	requestDisableBatteryOptimization: async () => "settingOverrideNeeded",
	requestAppleHealthPermission: async () => "settingOverrideNeeded",
	checkMotionPermission: () => "settingOverrideNeeded",
	checkNotificationPermission: async () => "settingOverrideNeeded",
	checkDisableBatteryOptimization: async () => "settingOverrideNeeded",
	checkAppleHealthPermission: async () => "settingOverrideNeeded",
	onboardingNeeded: true,
	markPermissionAsSkipped: () => {
		throw new Error("markPermissionAsSkipped is not implemented");
	},
});

function useBatteryOptimization() {
	const [disableBatteryOptimization, setDisableBatteryOptimization] =
		useState<NativePermissionState>("settingOverrideNeeded");

	const checkDisableBatteryOptimization = useCallback(async () => {
		if (Platform.OS === "ios") {
			setDisableBatteryOptimization("permissionGranted");
			return "permissionGranted";
		}
		try {
			const permission =
				await SensorSamplingModule.getDisableBatteryOptimizations();
			setDisableBatteryOptimization(permission);
			return permission;
		} catch (error) {
			captureException(error);
			logger.error("Error checking battery optimization permission", {
				error,
				platform: Platform.OS,
			});
		}
		return "settingOverrideNeeded";
	}, []);

	const requestDisableBatteryOptimization = useCallback(async () => {
		if (Platform.OS === "ios") {
			setDisableBatteryOptimization("permissionGranted");
			return "permissionGranted";
		}
		try {
			const permission =
				await SensorSamplingModule.requestDisableBatteryOptimizations();
			logger.debug("Battery optimization permission requested", {
				permission,
				platform: Platform.OS,
			});
			setDisableBatteryOptimization(permission);
			return permission;
		} catch (error) {
			captureException(error);
			logger.error("Error requesting battery optimization permission", {
				error,
				platform: Platform.OS,
			});
		}
		return "settingOverrideNeeded";
	}, []);

	return {
		disableBatteryOptimization,
		checkDisableBatteryOptimization,
		requestDisableBatteryOptimization,
		setDisableBatteryOptimization,
	};
}

function useNotificationPermission() {
	const [notificationPermissionState, setNotificationPermissionState] =
		useState<NativePermissionState>("settingOverrideNeeded");

	const checkNotificationPermission = useCallback(async () => {
		try {
			const permissionResult = await getPermissionsAsync();
			const status = permissionResult.status;
			logger.debug("Notification permission status checked", {
				status: permissionResult.status,
				canAskAgain: permissionResult.canAskAgain,
			});
			let permissionState: NativePermissionState;

			if (status === "granted") {
				permissionState = "permissionGranted";
			} else if (status === "undetermined" || permissionResult.canAskAgain) {
				permissionState = "askForPermission";
			} else {
				permissionState = "settingOverrideNeeded";
			}

			setNotificationPermissionState(permissionState);
			return permissionState;
		} catch (_error) {
			return "settingOverrideNeeded";
		}
	}, []);

	const requestNotificationPermission = useCallback(async () => {
		try {
			const { status } = await requestPermissionsAsync();
			let permissionState: NativePermissionState;

			if (status === "granted") {
				permissionState = "permissionGranted";
			} else if (status === "denied") {
				permissionState = "askForPermission";
			} else {
				permissionState = "settingOverrideNeeded";
			}

			setNotificationPermissionState(permissionState);
			return permissionState;
		} catch (_error) {
			return "settingOverrideNeeded";
		}
	}, []);

	return {
		notificationPermissionState,
		checkNotificationPermission,
		requestNotificationPermission,
		setNotificationPermissionState,
	};
}

function useAppleHealthPermission() {
	const [appleHealthPermissionState, setAppleHealthPermissionState] =
		useState<NativePermissionState>("settingOverrideNeeded");

	const checkAppleHealthPermission = useCallback(async () => {
		if (Platform.OS === "android") {
			setAppleHealthPermissionState("permissionGranted");
			return "permissionGranted";
		}
		try {
			const isGranted = await HealthKitService.isPermissionGranted();
			const permissionState: NativePermissionState = isGranted
				? "permissionGranted"
				: "askForPermission";

			setAppleHealthPermissionState(permissionState);
			return permissionState;
		} catch (error) {
			captureException(error);
			logger.error("Error checking Apple Health permission", {
				error,
				platform: Platform.OS,
			});
		}
		return "settingOverrideNeeded";
	}, []);

	const requestAppleHealthPermission = useCallback(async () => {
		if (Platform.OS === "android") {
			setAppleHealthPermissionState("permissionGranted");
			return "permissionGranted";
		}
		try {
			const success = await HealthKitService.requestPermissions();

			const permissionState: NativePermissionState = success
				? "permissionGranted"
				: "settingOverrideNeeded";

			logger.debug("Apple Health permission requested", {
				success,
				permissionState,
				platform: Platform.OS,
			});

			setAppleHealthPermissionState(permissionState);
			return permissionState;
		} catch (error) {
			captureException(error);
			logger.error("Error requesting Apple Health permission", {
				error,
				platform: Platform.OS,
			});
		}
		return "settingOverrideNeeded";
	}, []);

	return {
		appleHealthPermissionState,
		checkAppleHealthPermission,
		requestAppleHealthPermission,
		setAppleHealthPermissionState,
	};
}

function useOnboardingStatus(
	notificationPermissionState: NativePermissionState,
	motionPermissionState: NativePermissionState,
	disableBatteryOptimization: NativePermissionState,
	appleHealthPermissionState: NativePermissionState
) {
	const [onboardingNeeded, setOnboardingNeeded] = useState<boolean>(true);

	useEffect(() => {
		const states = [notificationPermissionState];
		if (Platform.OS === "ios") {
			states.push(motionPermissionState);
			states.push(appleHealthPermissionState);
		} else {
			states.push(disableBatteryOptimization);
		}
		const allGranted = states.every(
			(state) => state === "permissionGranted" || state === "skipped"
		);
		setOnboardingNeeded(!allGranted);
	}, [
		notificationPermissionState,
		motionPermissionState,
		disableBatteryOptimization,
		appleHealthPermissionState,
	]);

	return onboardingNeeded;
}

type PermissionCheckers = {
	checkMotionPermission: () => NativePermissionState;
	checkNotificationPermission: () => Promise<NativePermissionState>;
	checkAppleHealthPermission: () => Promise<NativePermissionState>;
	checkDisableBatteryOptimization: () => Promise<NativePermissionState>;
};

function usePermissionInitialization(
	checkers: PermissionCheckers,
	setterMap: PermissionSetterMap
) {
	const [permissionsLoading, setPermissionsLoading] = useState<boolean>(true);

	useEffect(() => {
		const checkAllPermissions = async () => {
			try {
				const skipped = await loadSkippedPermissions();

				if (skipped.includes(PermissionType.MOTION)) {
					setterMap[PermissionType.MOTION]("skipped");
				} else {
					checkers.checkMotionPermission();
				}

				if (skipped.includes(PermissionType.NOTIFICATION)) {
					setterMap[PermissionType.NOTIFICATION]("skipped");
				} else {
					await checkers.checkNotificationPermission();
				}

				if (skipped.includes(PermissionType.APPLE_HEALTH)) {
					setterMap[PermissionType.APPLE_HEALTH]("skipped");
				} else {
					await checkers.checkAppleHealthPermission();
				}

				if (skipped.includes(PermissionType.BATTERY_OPTIMIZATION)) {
					setterMap[PermissionType.BATTERY_OPTIMIZATION]("skipped");
				} else {
					await checkers.checkDisableBatteryOptimization();
				}
			} catch (error) {
				logger.error("Error checking permissions", { error });
				Sentry.captureException(error);
			} finally {
				setPermissionsLoading(false);
			}
		};

		void checkAllPermissions();
	}, [checkers, setterMap]);

	return { permissionsLoading };
}

function useAppStatePermissionRefresh(checkers: PermissionCheckers) {
	useEffect(() => {
		const checkPermissionsOnForeground = async (): Promise<void> => {
			try {
				const skipped = await loadSkippedPermissions();

				if (!skipped.includes(PermissionType.MOTION)) {
					checkers.checkMotionPermission();
				}

				if (!skipped.includes(PermissionType.NOTIFICATION)) {
					await checkers.checkNotificationPermission();
				}

				if (!skipped.includes(PermissionType.APPLE_HEALTH)) {
					await checkers.checkAppleHealthPermission();
				}

				if (!skipped.includes(PermissionType.BATTERY_OPTIMIZATION)) {
					await checkers.checkDisableBatteryOptimization();
				}

				logger.debug("Permissions refreshed on app foreground");
			} catch (error) {
				logger.error("Error refreshing permissions on foreground", { error });
				captureException(error);
			}
		};

		const handleAppStateChange = (nextAppState: string): void => {
			if (nextAppState === "active") {
				void checkPermissionsOnForeground();
			}
		};

		const subscription = AppState.addEventListener(
			"change",
			handleAppStateChange
		);

		return (): void => {
			subscription?.remove();
		};
	}, [checkers]);
}

function useMotionPermission() {
	const [motionPermissionState, setMotionPermissionState] =
		useState<NativePermissionState>("settingOverrideNeeded");

	const checkMotionPermission = useCallback(() => {
		try {
			const motionPermission = SensorSamplingModule.getMotionPermissionState();
			setMotionPermissionState(motionPermission);
			return motionPermission;
		} catch (_error) {
			return "settingOverrideNeeded";
		}
	}, []);

	const requestMotionPermission = useCallback(async () => {
		try {
			const motionPermission =
				await SensorSamplingModule.requestMotionPermission();
			setMotionPermissionState(motionPermission);
			return motionPermission;
		} catch (_error) {
			return "settingOverrideNeeded";
		}
	}, []);

	return {
		motionPermissionState,
		checkMotionPermission,
		requestMotionPermission,
		setMotionPermissionState,
	};
}

export const PermissionProvider: React.FC<Props> = ({ children }) => {
	const [skippedPermissions, setSkippedPermissions] = useState<
		PermissionTypeValues[]
	>([]);

	const {
		disableBatteryOptimization,
		checkDisableBatteryOptimization,
		requestDisableBatteryOptimization,
		setDisableBatteryOptimization,
	} = useBatteryOptimization();
	const {
		motionPermissionState,
		checkMotionPermission,
		requestMotionPermission,
		setMotionPermissionState,
	} = useMotionPermission();
	const {
		notificationPermissionState,
		checkNotificationPermission,
		requestNotificationPermission,
		setNotificationPermissionState,
	} = useNotificationPermission();
	const {
		appleHealthPermissionState,
		checkAppleHealthPermission,
		requestAppleHealthPermission,
		setAppleHealthPermissionState,
	} = useAppleHealthPermission();

	const setterMap = useMemo(
		() => ({
			[PermissionType.NOTIFICATION]: setNotificationPermissionState,
			[PermissionType.MOTION]: setMotionPermissionState,
			[PermissionType.APPLE_HEALTH]: setAppleHealthPermissionState,
			[PermissionType.BATTERY_OPTIMIZATION]: setDisableBatteryOptimization,
		}),
		[
			setNotificationPermissionState,
			setMotionPermissionState,
			setAppleHealthPermissionState,
			setDisableBatteryOptimization,
		]
	);

	const onboardingNeeded = useOnboardingStatus(
		notificationPermissionState,
		motionPermissionState,
		disableBatteryOptimization,
		appleHealthPermissionState
	);

	const checkers = {
		checkMotionPermission,
		checkNotificationPermission,
		checkAppleHealthPermission,
		checkDisableBatteryOptimization,
	};

	const { permissionsLoading } = usePermissionInitialization(
		checkers,
		setterMap
	);

	useAppStatePermissionRefresh(checkers);

	const markPermissionAsSkipped = useCallback(
		async (permission: PermissionTypeValues, skip: boolean) => {
			try {
				let updatedSkippedPermissions: PermissionTypeValues[];
				if (skip) {
					updatedSkippedPermissions = [...skippedPermissions, permission];
				} else {
					updatedSkippedPermissions = skippedPermissions.filter(
						(p) => p !== permission
					);
				}
				setSkippedPermissions(updatedSkippedPermissions);

				if (skip) {
					setPermissionStateByType(permission, "skipped", setterMap);
				}

				await saveSkippedPermissions(updatedSkippedPermissions);
			} catch (error) {
				captureException(error);
				logger.error("Error marking permission as skipped", {
					permissionType: permission,
					error,
				});
			}
		},
		[skippedPermissions, setterMap]
	);

	const wrappedRequestNotificationPermission = useCallback(async () => {
		const result = await requestNotificationPermission();
		await markPermissionAsSkipped(PermissionType.NOTIFICATION, false);
		return result;
	}, [requestNotificationPermission, markPermissionAsSkipped]);

	const wrappedRequestAppleHealthPermission = useCallback(async () => {
		const result = await requestAppleHealthPermission();
		await markPermissionAsSkipped(PermissionType.APPLE_HEALTH, false);
		return result;
	}, [requestAppleHealthPermission, markPermissionAsSkipped]);
	useEffect(() => {
		const initializeSkippedPermissions = async () => {
			const skipped = await loadSkippedPermissions();
			setSkippedPermissions(skipped);
		};
		void initializeSkippedPermissions();
	}, []);

	return (
		<PermissionContext.Provider
			value={{
				onboardingNeeded,
				permissionsLoading,
				[PermissionType.NOTIFICATION]: notificationPermissionState,
				[PermissionType.MOTION]: motionPermissionState,
				[PermissionType.APPLE_HEALTH]: appleHealthPermissionState,
				[PermissionType.BATTERY_OPTIMIZATION]: disableBatteryOptimization,
				skippedPermissions,
				requestMotionPermission,
				requestNotificationPermission: wrappedRequestNotificationPermission,
				requestDisableBatteryOptimization,
				requestAppleHealthPermission: wrappedRequestAppleHealthPermission,
				checkMotionPermission,
				checkNotificationPermission,
				checkDisableBatteryOptimization,
				checkAppleHealthPermission,
				markPermissionAsSkipped,
			}}
		>
			{children}
		</PermissionContext.Provider>
	);
};

export const usePermissions = () => {
	const context = useContext(PermissionContext);

	if (!context) {
		throw new Error("usePermissions must be used within a PermissionProvider");
	}

	return context;
};
</code>
```
