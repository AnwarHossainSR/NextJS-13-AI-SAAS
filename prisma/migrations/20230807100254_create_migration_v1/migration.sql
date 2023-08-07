-- CreateTable
CREATE TABLE `UserApiLimit` (
    `id` varchar(191) NOT NULL,
    `userId` varchar(191) NOT NULL,
    `count` integer NOT NULL DEFAULT 0,
    `createdAt` DATETIME (3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME (3) NOT NULL,
    UNIQUE INDEX `UserApiLimit_userId_key` (`userId`),
    PRIMARY KEY (`id`))
DEFAULT CHARACTER
SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `UserSubscription` (
    `id` varchar(191) NOT NULL,
    `userId` varchar(191) NOT NULL,
    `stripe_customer_id` varchar(191) NULL,
    `stripe_subscription_id` varchar(191) NULL,
    `stripe_price_id` varchar(191) NULL,
    `stripe_current_period_end` DATETIME (3) NULL,
    UNIQUE INDEX `UserSubscription_userId_key` (`userId`),
    UNIQUE INDEX `UserSubscription_stripe_customer_id_key` (`stripe_customer_id`),
    UNIQUE INDEX `UserSubscription_stripe_subscription_id_key` (`stripe_subscription_id`),
    PRIMARY KEY (`id`))
DEFAULT CHARACTER
SET utf8mb4 COLLATE utf8mb4_unicode_ci;

