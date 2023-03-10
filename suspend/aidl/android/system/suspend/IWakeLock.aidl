/*
 * Copyright (C) 2021 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package android.system.suspend;

/**
 * Allocating an IWakeLock instance must block system suspend. Deallocating an
 * IWakeLock must unblock system suspend in a manner equivalent to calling
 * IWakeLock::release().
 */
@VintfStability
interface IWakeLock {
    /**
     *  Releases IWakeLock instance. This method only has effect first time its
     *  called. Subsequent calls must result in no-ops. If no unreleased wake
     *  lock is present, system is allowed to suspend.
     */
    oneway void release();
}
