using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Text.RegularExpressions;
using System.Globalization;
using Microsoft.Win32;
using YamlDotNet.Serialization;
using System.IO;

namespace Gun_Property_Editor
{
    public class Gun
    {
        public string GunName { get; set; }
        public string GunSpriteName { get; set; }
        public string ShortDescription { get; set; }
        public string LongDescription { get; set; }
        public string GetProjectileFrom { get; set; }
        public int NumberOfShots { get; set; }
        public int Quality { get; set; }
        public int ShootStyle { get; set; }
        public bool UsesCustomSprite { get; set; }
        public string DefaultSprite { get; set; }
        public int SpriteFPS { get; set; }

        public int MaxAmmo { get; set; }
        public int ClipCapacity { get; set; }
        public int ArmorToGainOnPickup { get; set; }
        public bool ReflectBulletsDuringReload { get; set; }
        public bool DirectionlessScreenShake { get; set; }
        public bool ClearsCooldownsLikeAWP { get; set; }
        public bool AppliesHoming { get; set; }
        public float AppliedHomingAngularVelocity { get; set; }
        public float AppliedHomingDetectRadius { get; set; }
        public bool CanSneakAttack { get; set; }
        public float SneakAttackDamageMultiplier { get; set; }
        public bool RequiresFundsToShoot { get; set; }
        public int CurrencyCostPerShot { get; set; }
        public bool LocalActiveReload { get; set; }

        public bool UsesRechargeLikeActiveItem { get; set; }
        public float ActiveItemStyleRechargeAmount { get; set; }
        public bool CanCriticalFire { get; set; }
        public float CriticalChance { get; set; }
        public float CriticalDamageMultiplier { get; set; }
        public bool GainsRateOfFireAsContinueAttack { get; set; }
        public float RateOfFireMultiplierAdditionPerSecond { get; set; }
        public bool CanBeDropped { get; set; }
        public bool PersistsOnDeath { get; set; }
        public bool RespawnsIfPitfall { get; set; }
        public bool UsesCustomCost { get; set; }
        public int CustomCost { get; set; }

        public bool PersistsOnPurchase { get; set; }
        public bool CanBeSold { get; set; }
        public int AdditionalClipCapacity { get; set; }
        public bool InfiniteAmmo { get; set; }
        public bool UsesBossDamageModifier { get; set; }
        public float CustomBossDamageModifier { get; set; }
        public bool CanGainAmmo { get; set; }
        public float BlankDamageScalingOnEmptyClip { get; set; }
        public float BlankDamageToEnemies { get; set; }
        public bool BlankDuringReload { get; set; }
        public float BlankKnockbackPower { get; set; }
        public float BlankReloadRadius { get; set; }
        public bool DoesScreenShake { get; set; }
        public float ScreenShakeMagnitude { get; set; }
        public float ScreenShakeSpeed { get; set; }
        public float ScreenShakeTime { get; set; }
        public float ScreenShakeFalloff { get; set; }
        public float ReloadTime { get; set; }
        public float AngleVariance { get; set; }
        public int AmmoCost { get; set; }

        public float BurstCooldownTime { get; set; }
        public float CooldownTime { get; set; }
        public int BurstShotCount { get; set; }
        public float ChargedGunChargeTime { get; set; }
        public bool UsesShotgunStyleVelocityRandomizer { get; set; }
        public float DecreaseFinalSpeedPercentMin { get; set; }
        public float IncreaseFinalSpeedPercentMax { get; set; }

        public float ProjectileScaleMultiplier { get; set; }
        public bool AppliesStun { get; set; }
        public float StunChance { get; set; }
        public float StunDuration { get; set; }
        public bool AppliesBleed { get; set; }
        public float BleedChance { get; set; }
        public float BleedDuration { get; set; }
        public bool AppliesCharm { get; set; }
        public float CharmChance { get; set; }
        public float CharmDuration { get; set; }
        public bool AppliesFire { get; set; }
        public float FireChance { get; set; }
        public float FireDuration { get; set; }
        public bool AppliesFreeze { get; set; }
        public float FreezeChance { get; set; }
        public float FreezeDuration { get; set; }
        public bool AppliesPoison { get; set; }
        public float PoisonChance { get; set; }
        public bool AppliesSpeed { get; set; }
        public float SpeedChance { get; set; }
        public float SpeedDuration { get; set; }
        public float SpeedMultiplier { get; set; }
        public bool AppliesKnockbackToPlayer { get; set; }
        public float PlayerKnockbackForce { get; set; }
        public bool DamagesWalls { get; set; }
        public float ProjectileDamage { get; set; }
        public float ProjectileSpeed { get; set; }
        public float ProjectileForce { get; set; }
        public float ProjectileRange { get; set; }
        public bool CollidesWithEnemies { get; set; }
        public bool CollidesWithPlayer { get; set; }
        public bool CollidesWithProjectiles { get; set; }
        public bool CollidesOnlyWithPlayerProjectiles { get; set; }
        public bool DoesBounce { get; set; }
        public int NumberOfBounces { get; set; }
        public bool DoesPierce { get; set; }
        public int NumberOfPierces { get; set; }
    }
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private static int ConvertToQuality(int index)
        {
            switch (index)
            {
                case 0:
                    return 1;
                case 1:
                    return 2;
                case 2:
                    return 3;
                case 3:
                    return 4;
                case 4:
                    return 5;
                case 5:
                    return -1;
                default:
                    return 1;
            }
        }
        public MainWindow()
        {
            InitializeComponent();
            defaultSpriteLabel.Visibility = Visibility.Hidden;
            openSprite.Visibility = Visibility.Hidden;
            spriteDir.Visibility = Visibility.Hidden;
            homingVelocityLabel.Visibility = Visibility.Hidden;
            homingVelocity.Visibility = Visibility.Hidden;
            homingRangeLabel.Visibility = Visibility.Hidden;
            homingRange.Visibility = Visibility.Hidden;
            moneyLabel.Visibility = Visibility.Hidden;
            moneyPerShot.Visibility = Visibility.Hidden;
            chargeTime.Visibility = Visibility.Hidden;
            chargeTimeLabel.Visibility = Visibility.Hidden;
            fpsLabel.Visibility = Visibility.Hidden;
            spriteFps.Visibility = Visibility.Hidden;
            customShopPrice.Visibility = Visibility.Hidden;
            blankKnockbackPower.Visibility = Visibility.Hidden;
            blankKnockbackPowerLabel.Visibility = Visibility.Hidden;
            blankDamage.Visibility = Visibility.Hidden;
            blankDamageLabel.Visibility = Visibility.Hidden;
            blankDamageMultiplier.Visibility = Visibility.Hidden;
            blankDamageMultiplierLabel.Visibility = Visibility.Hidden;
            blankRadius.Visibility = Visibility.Hidden;
            blankRadiusLabel.Visibility = Visibility.Hidden;
            directionlessScreenShake.Visibility = Visibility.Hidden;
            screenShakeMagnitudeLabel.Visibility = Visibility.Hidden;
            screenShakeMagnitude.Visibility = Visibility.Hidden;
            screenShakeFalloff.Visibility = Visibility.Hidden;
            screenShakeFalloffLabel.Visibility = Visibility.Hidden;
            screenShakeSpeed.Visibility = Visibility.Hidden;
            screenShakeSpeedLabel.Visibility = Visibility.Hidden;
            screenShakeTime.Visibility = Visibility.Hidden;
            screenShakeTimeLabel.Visibility = Visibility.Hidden;
            bossDamageModifier.Visibility = Visibility.Hidden;
            decreaseFinalSpeedPercentMin.Visibility = Visibility.Hidden;
            increaseFinalSpeedPercentMax.Visibility = Visibility.Hidden;
            finalSpeedMaxLabel.Visibility = Visibility.Hidden;
            finalSpeedMinLabel.Visibility = Visibility.Hidden;
            sneakAttackDamageMultiplierLabel.Visibility = Visibility.Hidden;
            sneakAttackDamageMultiplier.Visibility = Visibility.Hidden;
            activeItemStyleRechargeAmount.Visibility = Visibility.Hidden;
            criticalChance.Visibility = Visibility.Hidden;
            criticalChanceLabel.Visibility = Visibility.Hidden;
            criticalDamage.Visibility = Visibility.Hidden;
            criticalDamageLabel.Visibility = Visibility.Hidden;
            rateOfFireMultiplier.Visibility = Visibility.Hidden;
            rateOfFireMultiplierLabel.Visibility = Visibility.Hidden;
            knockbackForceLabel.Visibility = Visibility.Hidden;
            playerKnockbackForce.Visibility = Visibility.Hidden;
            collidesWithPlayerProjectiles.Visibility = Visibility.Hidden;
            bounces.Visibility = Visibility.Hidden;
            pierces.Visibility = Visibility.Hidden;
            stunChance.Visibility = Visibility.Hidden;
            stunChanceLabel.Visibility = Visibility.Hidden;
            stunDuration.Visibility = Visibility.Hidden;
            stunDurationLabel.Visibility = Visibility.Hidden;
            speedChance.Visibility = Visibility.Hidden;
            speedChanceLabel.Visibility = Visibility.Hidden;
            speedDuration.Visibility = Visibility.Hidden;
            speedDurationLabel.Visibility = Visibility.Hidden;
            freezeChance.Visibility = Visibility.Hidden;
            freezeChanceLabel.Visibility = Visibility.Hidden;
            freezeDuration.Visibility = Visibility.Hidden;
            freezeDurationLabel.Visibility = Visibility.Hidden;
            charmChance.Visibility = Visibility.Hidden;
            charmChanceLabel.Visibility = Visibility.Hidden;
            charmDuration.Visibility = Visibility.Hidden;
            charmDurationLabel.Visibility = Visibility.Hidden;
            fireChance.Visibility = Visibility.Hidden;
            fireChanceLabel.Visibility = Visibility.Hidden;
            fireDuration.Visibility = Visibility.Hidden;
            fireDurationLabel.Visibility = Visibility.Hidden;
            bleedChance.Visibility = Visibility.Hidden;
            bleedChanceLabel.Visibility = Visibility.Hidden;
            bleedDuration.Visibility = Visibility.Hidden;
            bleedDurationLabel.Visibility = Visibility.Hidden;
            stunChance.Visibility = Visibility.Hidden;
            stunChanceLabel.Visibility = Visibility.Hidden;
            stunDuration.Visibility = Visibility.Hidden;
            stunDurationLabel.Visibility = Visibility.Hidden;
            poisonChance.Visibility = Visibility.Hidden;
            poisonChanceLabel.Visibility = Visibility.Hidden;
            qualityBox.SelectedIndex = 0;
            shootStyleBox.SelectedIndex = 0;
        }

        private static bool IsValid(string text)
        {
            Regex regex = new Regex("[^0-9.-]+");
            return !regex.IsMatch(text);
        }

        private void OpenSprite_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.Filter = "PNG Image Files (*.png)|*.png";
            if (openFileDialog.ShowDialog() == true)
            {
                spriteDir.Text = openFileDialog.FileName;
            }
        }

        private void usesCustomSprites_Click(object sender, RoutedEventArgs e)
        {
            if ((bool)usesCustomSprites.IsChecked)
            {
                defaultSpriteLabel.Visibility = Visibility.Visible;
                openSprite.Visibility = Visibility.Visible;
                spriteDir.Visibility = Visibility.Visible;
                fpsLabel.Visibility = Visibility.Visible;
                spriteFps.Visibility = Visibility.Visible;
            }
            else
            {
                defaultSpriteLabel.Visibility = Visibility.Hidden;
                openSprite.Visibility = Visibility.Hidden;
                spriteDir.Visibility = Visibility.Hidden;
                fpsLabel.Visibility = Visibility.Hidden;
                spriteFps.Visibility = Visibility.Hidden;
            }
        }

        private void spriteDir_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (!String.IsNullOrWhiteSpace(spriteDir.Text) && File.Exists(spriteDir.Text) && (spriteDir.Text.EndsWith(".png") || spriteDir.Text.EndsWith(".png\\")))
            {
                sprite.Source = new BitmapImage(new Uri(spriteDir.Text));
            }
        }

        private void hasHoming_Click(object sender, RoutedEventArgs e)
        {
            if ((bool)hasHoming.IsChecked)
            {
                homingVelocityLabel.Visibility = Visibility.Visible;
                homingVelocity.Visibility = Visibility.Visible;
                homingRangeLabel.Visibility = Visibility.Visible;
                homingRange.Visibility = Visibility.Visible;
            }
            else
            {
                homingVelocityLabel.Visibility = Visibility.Hidden;
                homingVelocity.Visibility = Visibility.Hidden;
                homingRangeLabel.Visibility = Visibility.Hidden;
                homingRange.Visibility = Visibility.Hidden;
            }
            
        }

        private void isFloat_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            if (IsValid(e.Text))
            {
                e.Handled = false;
            }
            else
            {
                e.Handled = true;
            }
        }

        private void isInteger_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            int outparse;
            if (!int.TryParse(e.Text, out outparse))
            {
                e.Handled = true;
            }
            else
            {
                e.Handled = false;
            }
        }

        private void usesMoney_Click(object sender, RoutedEventArgs e)
        {
            if ((bool)usesMoney.IsChecked)
            {
                moneyLabel.Visibility = Visibility.Visible;
                moneyPerShot.Visibility = Visibility.Visible;
            }
            else
            {
                moneyLabel.Visibility = Visibility.Hidden;
                moneyPerShot.Visibility = Visibility.Hidden;
            }
        }

        private void shootStyleBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (shootStyleBox.SelectedIndex == 2)
            {
                burstCooldownTime.Visibility = Visibility.Visible;
                burstCooldownTimeLabel.Visibility = Visibility.Visible;
                burstShotCount.Visibility = Visibility.Visible;
                burstShotCountLabel.Visibility = Visibility.Visible;
                chargeTime.Visibility = Visibility.Hidden;
                chargeTimeLabel.Visibility = Visibility.Hidden;
            }
            else if (shootStyleBox.SelectedIndex == 3)
            {
                burstCooldownTime.Visibility = Visibility.Hidden;
                burstCooldownTimeLabel.Visibility = Visibility.Hidden;
                burstShotCount.Visibility = Visibility.Hidden;
                burstShotCountLabel.Visibility = Visibility.Hidden;
                chargeTime.Visibility = Visibility.Visible;
                chargeTimeLabel.Visibility = Visibility.Visible;
            }
            else
            {
                burstCooldownTime.Visibility = Visibility.Hidden;
                burstCooldownTimeLabel.Visibility = Visibility.Hidden;
                burstShotCount.Visibility = Visibility.Hidden;
                burstShotCountLabel.Visibility = Visibility.Hidden;
                chargeTime.Visibility = Visibility.Hidden;
                chargeTimeLabel.Visibility = Visibility.Hidden;
            }
        }

        private void customShopPrice_Click(object sender, RoutedEventArgs e)
        {
            if ((bool)customShopPriceCheck.IsChecked)
            {
                customShopPrice.Visibility = Visibility.Visible;
            }
            else
            {
                customShopPrice.Visibility = Visibility.Hidden;
            }
        }

        private void blankDuringReload_Click(object sender, RoutedEventArgs e)
        {
            if ((bool)blankDuringReload.IsChecked)
            {
                blankKnockbackPower.Visibility = Visibility.Visible;
                blankKnockbackPowerLabel.Visibility = Visibility.Visible;
                blankDamage.Visibility = Visibility.Visible;
                blankDamageLabel.Visibility = Visibility.Visible;
                blankDamageMultiplier.Visibility = Visibility.Visible;
                blankDamageMultiplierLabel.Visibility = Visibility.Visible;
                blankRadius.Visibility = Visibility.Visible;
                blankRadiusLabel.Visibility = Visibility.Visible;
            }
            else
            {
                blankKnockbackPower.Visibility = Visibility.Hidden;
                blankKnockbackPowerLabel.Visibility = Visibility.Hidden;
                blankDamage.Visibility = Visibility.Hidden;
                blankDamageLabel.Visibility = Visibility.Hidden;
                blankDamageMultiplier.Visibility = Visibility.Hidden;
                blankDamageMultiplierLabel.Visibility = Visibility.Hidden;
                blankRadius.Visibility = Visibility.Hidden;
                blankRadiusLabel.Visibility = Visibility.Hidden;
            }
        }

        private void usesScreenShake_Click(object sender, RoutedEventArgs e)
        {
            if ((bool)usesScreenShake.IsChecked)
            {
                directionlessScreenShake.Visibility = Visibility.Visible;
                screenShakeMagnitudeLabel.Visibility = Visibility.Visible;
                screenShakeMagnitude.Visibility = Visibility.Visible;
                screenShakeFalloff.Visibility = Visibility.Visible;
                screenShakeFalloffLabel.Visibility = Visibility.Visible;
                screenShakeSpeed.Visibility = Visibility.Visible;
                screenShakeSpeedLabel.Visibility = Visibility.Visible;
                screenShakeTime.Visibility = Visibility.Visible;
                screenShakeTimeLabel.Visibility = Visibility.Visible;
            }
            else
            {
                directionlessScreenShake.Visibility = Visibility.Hidden;
                screenShakeMagnitudeLabel.Visibility = Visibility.Hidden;
                screenShakeMagnitude.Visibility = Visibility.Hidden;
                screenShakeFalloff.Visibility = Visibility.Hidden;
                screenShakeFalloffLabel.Visibility = Visibility.Hidden;
                screenShakeSpeed.Visibility = Visibility.Hidden;
                screenShakeSpeedLabel.Visibility = Visibility.Hidden;
                screenShakeTime.Visibility = Visibility.Hidden;
                screenShakeTimeLabel.Visibility = Visibility.Hidden;
            }
        }

        private void usesBossDamageModifier_Click(object sender, RoutedEventArgs e)
        {
            if ((bool)usesBossDamageModifier.IsChecked)
            {
                bossDamageModifier.Visibility = Visibility.Visible;
            }
            else
            {
                bossDamageModifier.Visibility = Visibility.Hidden;
            }
        }

        private void usesShotgunStyleVelocityRandomizer_Click(object sender, RoutedEventArgs e)
        {
            if ((bool)usesShotgunStyleVelocityRandomizer.IsChecked)
            {
                decreaseFinalSpeedPercentMin.Visibility = Visibility.Visible;
                increaseFinalSpeedPercentMax.Visibility = Visibility.Visible;
                finalSpeedMaxLabel.Visibility = Visibility.Visible;
                finalSpeedMinLabel.Visibility = Visibility.Visible;
            }
            else
            {
                decreaseFinalSpeedPercentMin.Visibility = Visibility.Hidden;
                increaseFinalSpeedPercentMax.Visibility = Visibility.Hidden;
                finalSpeedMaxLabel.Visibility = Visibility.Hidden;
                finalSpeedMinLabel.Visibility = Visibility.Hidden;
            }
        }

        private void canSneakAttack_Click(object sender, RoutedEventArgs e)
        {
            if ((bool)canSneakAttack.IsChecked)
            {
                sneakAttackDamageMultiplierLabel.Visibility = Visibility.Visible;
                sneakAttackDamageMultiplier.Visibility = Visibility.Visible;
            }
            else
            {
                sneakAttackDamageMultiplierLabel.Visibility = Visibility.Hidden;
                sneakAttackDamageMultiplier.Visibility = Visibility.Hidden;
            }
        }

        private void usesActiveItemRecharge_Click(object sender, RoutedEventArgs e)
        {
            if ((bool)usesActiveItemRecharge.IsChecked)
            {
                activeItemStyleRechargeAmount.Visibility = Visibility.Visible;
            }
            else
            {
                activeItemStyleRechargeAmount.Visibility = Visibility.Hidden;
            }
        }

        private void canCriticalFire_Click(object sender, RoutedEventArgs e)
        {
            if ((bool)canCriticalFire.IsChecked)
            {
                criticalChance.Visibility = Visibility.Visible;
                criticalChanceLabel.Visibility = Visibility.Visible;
                criticalDamage.Visibility = Visibility.Visible;
                criticalDamageLabel.Visibility = Visibility.Visible;
            }
            else
            {
                criticalChance.Visibility = Visibility.Hidden;
                criticalChanceLabel.Visibility = Visibility.Hidden;
                criticalDamage.Visibility = Visibility.Hidden;
                criticalDamageLabel.Visibility = Visibility.Hidden;
            }
        }

        private void gainsRateOfFireAsContinueAttack_Click(object sender, RoutedEventArgs e)
        {
            if ((bool)gainsRateOfFireAsContinueAttack.IsChecked)
            {
                rateOfFireMultiplier.Visibility = Visibility.Visible;
                rateOfFireMultiplierLabel.Visibility = Visibility.Visible;
            }
            else
            {
                rateOfFireMultiplier.Visibility = Visibility.Hidden;
                rateOfFireMultiplierLabel.Visibility = Visibility.Hidden;
            }
        }

        private void comboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void appliesKnockbackToPlayer_Click(object sender, RoutedEventArgs e)
        {
            if ((bool)appliesKnockbackToPlayer.IsChecked)
            {
                knockbackForceLabel.Visibility = Visibility.Visible;
                playerKnockbackForce.Visibility = Visibility.Visible;
            }
            else
            {
                knockbackForceLabel.Visibility = Visibility.Hidden;
                playerKnockbackForce.Visibility = Visibility.Hidden;
            }
        }

        private void collidesWithProjectiles_Click(object sender, RoutedEventArgs e)
        {
            if ((bool)collidesWithProjectiles.IsChecked)
            {
                collidesWithPlayerProjectiles.Visibility = Visibility.Visible;
            }
            else
            {
                collidesWithPlayerProjectiles.Visibility = Visibility.Hidden;
            }
        }

        private void doesPierce_Click(object sender, RoutedEventArgs e)
        {
            if ((bool)doesPierce.IsChecked)
            {
                pierces.Visibility = Visibility.Visible;
            }
            else
            {
                pierces.Visibility = Visibility.Hidden;
            }
        }

        private void doesBounce_Click(object sender, RoutedEventArgs e)
        {
            if ((bool)doesBounce.IsChecked)
            {
                bounces.Visibility = Visibility.Visible;
            }
            else
            {
                bounces.Visibility = Visibility.Hidden;
            }
        }

        private void stunsEnemies_Click(object sender, RoutedEventArgs e)
        {
            if ((bool)stunsEnemies.IsChecked)
            {
                stunChance.Visibility = Visibility.Visible;
                stunChanceLabel.Visibility = Visibility.Visible;
                stunDuration.Visibility = Visibility.Visible;
                stunDurationLabel.Visibility = Visibility.Visible;
            }
            else
            {
                stunChance.Visibility = Visibility.Hidden;
                stunChanceLabel.Visibility = Visibility.Hidden;
                stunDuration.Visibility = Visibility.Hidden;
                stunDurationLabel.Visibility = Visibility.Hidden;
            }
        }

        private void bleedsEnemies_Click(object sender, RoutedEventArgs e)
        {
            if ((bool)bleedsEnemies.IsChecked)
            {
                bleedChance.Visibility = Visibility.Visible;
                bleedChanceLabel.Visibility = Visibility.Visible;
                bleedDuration.Visibility = Visibility.Visible;
                bleedDurationLabel.Visibility = Visibility.Visible;
            }
            else
            {
                bleedChance.Visibility = Visibility.Hidden;
                bleedChanceLabel.Visibility = Visibility.Hidden;
                bleedDuration.Visibility = Visibility.Hidden;
                bleedDurationLabel.Visibility = Visibility.Hidden;
            }
        }

        private void charmsEnemies_Click(object sender, RoutedEventArgs e)
        {
            if ((bool)charmsEnemies.IsChecked)
            {
                charmChance.Visibility = Visibility.Visible;
                charmChanceLabel.Visibility = Visibility.Visible;
                charmDuration.Visibility = Visibility.Visible;
                charmDurationLabel.Visibility = Visibility.Visible;
            }
            else
            {
                charmChance.Visibility = Visibility.Hidden;
                charmChanceLabel.Visibility = Visibility.Hidden;
                charmDuration.Visibility = Visibility.Hidden;
                charmDurationLabel.Visibility = Visibility.Hidden;
            }
        }

        private void firesEnemies_Click(object sender, RoutedEventArgs e)
        {
            if ((bool)firesEnemies.IsChecked)
            {
                fireChance.Visibility = Visibility.Visible;
                fireChanceLabel.Visibility = Visibility.Visible;
                fireDuration.Visibility = Visibility.Visible;
                fireDurationLabel.Visibility = Visibility.Visible;
            }
            else
            {
                fireChance.Visibility = Visibility.Hidden;
                fireChanceLabel.Visibility = Visibility.Hidden;
                fireDuration.Visibility = Visibility.Hidden;
                fireDurationLabel.Visibility = Visibility.Hidden;
            }
        }

        private void freezesEnemies_Click(object sender, RoutedEventArgs e)
        {
            if ((bool)freezesEnemies.IsChecked)
            {
                freezeChance.Visibility = Visibility.Visible;
                freezeChanceLabel.Visibility = Visibility.Visible;
                freezeDuration.Visibility = Visibility.Visible;
                freezeDurationLabel.Visibility = Visibility.Visible;
            }
            else
            {
                freezeChance.Visibility = Visibility.Hidden;
                freezeChanceLabel.Visibility = Visibility.Hidden;
                freezeDuration.Visibility = Visibility.Hidden;
                freezeDurationLabel.Visibility = Visibility.Hidden;
            }
        }

        private void speedsEnemies_Click(object sender, RoutedEventArgs e)
        {
            if ((bool)speedsEnemies.IsChecked)
            {
                speedChance.Visibility = Visibility.Visible;
                speedChanceLabel.Visibility = Visibility.Visible;
                speedDuration.Visibility = Visibility.Visible;
                speedDurationLabel.Visibility = Visibility.Visible;
            }
            else
            {
                speedChance.Visibility = Visibility.Hidden;
                speedChanceLabel.Visibility = Visibility.Hidden;
                speedDuration.Visibility = Visibility.Hidden;
                speedDurationLabel.Visibility = Visibility.Hidden;
            }
        }

        private void poisonsEnemies_Click(object sender, RoutedEventArgs e)
        {
            if ((bool)poisonsEnemies.IsChecked)
            {
                poisonChance.Visibility = Visibility.Visible;
                poisonChanceLabel.Visibility = Visibility.Visible;
            }
            else
            {
                poisonChance.Visibility = Visibility.Hidden;
                poisonChanceLabel.Visibility = Visibility.Hidden;
            }
        }

        private void createButton_Click(object sender, RoutedEventArgs e)
        {
            var filename = gunName.Text.ToLower() + ".yaml";
            if (!File.Exists(filename))
            {
                File.CreateText(filename).Close();
            }

            var gun = new Gun();
            gun.GunName = gunName.Text;
            gun.GunSpriteName = spriteName.Text;
            gun.ShortDescription = shortDesc.Text;
            gun.LongDescription = longDesc.Text;
            gun.GetProjectileFrom = getProjectile.Text;
            gun.NumberOfShots = int.Parse(numberOfShots.Text);
            gun.ArmorToGainOnPickup = int.Parse(armorToGainOnPickup.Text);
            gun.ReflectBulletsDuringReload = (bool)reflectBullets.IsChecked;
            gun.DirectionlessScreenShake = (bool)directionlessScreenShake.IsChecked;
            gun.ClearsCooldownsLikeAWP = (bool)clearsCooldownsLikeAwp.IsChecked;
            gun.AppliesHoming = (bool)hasHoming.IsChecked;
            gun.AppliedHomingAngularVelocity = float.Parse(homingVelocity.Text);
            gun.AppliedHomingDetectRadius = float.Parse(homingRange.Text);
            gun.CanSneakAttack = (bool)canSneakAttack.IsChecked;
            gun.SneakAttackDamageMultiplier = float.Parse(sneakAttackDamageMultiplier.Text);
            gun.RequiresFundsToShoot = (bool)usesMoney.IsChecked;
            gun.CurrencyCostPerShot = int.Parse(moneyPerShot.Text);
            gun.LocalActiveReload = (bool)localActiveReload.IsChecked;
            gun.UsesRechargeLikeActiveItem = (bool)usesActiveItemRecharge.IsChecked;
            gun.ActiveItemStyleRechargeAmount = float.Parse(activeItemStyleRechargeAmount.Text);
            gun.CanCriticalFire = (bool)canCriticalFire.IsChecked;
            gun.CriticalChance = float.Parse(criticalChance.Text);
            gun.CriticalDamageMultiplier = float.Parse(criticalDamage.Text);
            gun.GainsRateOfFireAsContinueAttack = (bool)gainsRateOfFireAsContinueAttack.IsChecked;
            gun.RateOfFireMultiplierAdditionPerSecond = float.Parse(rateOfFireMultiplier.Text);
            gun.Quality = ConvertToQuality(qualityBox.SelectedIndex);
            gun.CanBeDropped = (bool)canBeDropped.IsChecked;
            gun.PersistsOnDeath = (bool)persistsOnDeath.IsChecked;
            gun.RespawnsIfPitfall = (bool)respawnsIfPitfall.IsChecked;
            gun.UsesCustomCost = (bool)customShopPriceCheck.IsChecked;
            gun.CustomCost = int.Parse(customShopPrice.Text);
            gun.PersistsOnPurchase = (bool)persistsOnPurchase.IsChecked;
            gun.CanBeSold = (bool)canBeSold.IsChecked;
            gun.MaxAmmo = int.Parse(maxAmmo.Text);
            gun.AdditionalClipCapacity = int.Parse(additionalClipCapacity.Text);
            gun.InfiniteAmmo = (bool)infiniteAmmo.IsChecked;
            gun.UsesBossDamageModifier = (bool)usesBossDamageModifier.IsChecked;
            gun.CustomBossDamageModifier = float.Parse(bossDamageModifier.Text);
            gun.CanGainAmmo = (bool)canGainAmmo.IsChecked;
            gun.BlankDamageScalingOnEmptyClip = float.Parse(blankDamageMultiplier.Text);
            gun.BlankDamageToEnemies = float.Parse(blankDamage.Text);
            gun.BlankDuringReload = (bool)blankDuringReload.IsChecked;
            gun.BlankKnockbackPower = float.Parse(blankKnockbackPower.Text);
            gun.BlankReloadRadius = float.Parse(blankRadius.Text);
            gun.DoesScreenShake = (bool)usesScreenShake.IsChecked;
            gun.ScreenShakeMagnitude = float.Parse(screenShakeMagnitude.Text);
            gun.ScreenShakeSpeed = float.Parse(screenShakeSpeed.Text);
            gun.ScreenShakeTime = float.Parse(screenShakeTime.Text);
            gun.ScreenShakeFalloff = float.Parse(screenShakeFalloff.Text);
            gun.ReloadTime = float.Parse(reloadTime.Text);
            gun.ClipCapacity = int.Parse(shotsInClip.Text);
            gun.AngleVariance = float.Parse(angleVariance.Text);
            gun.AmmoCost = int.Parse(ammoCost.Text);
            gun.ShootStyle = shootStyleBox.SelectedIndex;
            gun.BurstCooldownTime = float.Parse(burstCooldownTime.Text);
            gun.BurstShotCount = int.Parse(burstShotCount.Text);
            gun.ChargedGunChargeTime = float.Parse(chargeTime.Text);
            gun.UsesShotgunStyleVelocityRandomizer = (bool)usesShotgunStyleVelocityRandomizer.IsChecked;
            gun.DecreaseFinalSpeedPercentMin = float.Parse(decreaseFinalSpeedPercentMin.Text);
            gun.IncreaseFinalSpeedPercentMax = float.Parse(increaseFinalSpeedPercentMax.Text);
            gun.UsesCustomSprite = (bool)usesCustomSprites.IsChecked;
            gun.DefaultSprite = !string.IsNullOrWhiteSpace(spriteDir.Text) ? spriteDir.Text.Substring(spriteDir.Text.LastIndexOf("\\") + 1, spriteDir.Text.LastIndexOf(".") - spriteDir.Text.LastIndexOf("\\") - 1) : null;
            gun.SpriteFPS = int.Parse(spriteFps.Text);

            gun.ProjectileScaleMultiplier = float.Parse(projectileScaleMultiplier.Text);
            gun.AppliesStun = (bool)stunsEnemies.IsChecked;
            gun.StunChance = float.Parse(stunChance.Text);
            gun.StunDuration = float.Parse(stunDuration.Text);
            gun.AppliesBleed = (bool)bleedsEnemies.IsChecked;
            gun.BleedChance = float.Parse(bleedChance.Text);
            gun.BleedDuration = float.Parse(bleedDuration.Text);
            gun.AppliesCharm = (bool)charmsEnemies.IsChecked;
            gun.CharmChance = float.Parse(charmChance.Text);
            gun.CharmDuration = float.Parse(charmDuration.Text);
            gun.AppliesFire = (bool)firesEnemies.IsChecked;
            gun.FireChance = float.Parse(fireChance.Text);
            gun.FireDuration = float.Parse(fireDuration.Text);
            gun.AppliesFreeze = (bool)freezesEnemies.IsChecked;
            gun.FreezeChance = float.Parse(freezeChance.Text);
            gun.FreezeDuration = float.Parse(freezeDuration.Text);
            gun.AppliesPoison = (bool)poisonsEnemies.IsChecked;
            gun.PoisonChance = float.Parse(poisonChance.Text);
            gun.AppliesSpeed = (bool)speedsEnemies.IsChecked;
            gun.SpeedChance = float.Parse(speedChance.Text);
            gun.SpeedDuration = float.Parse(speedDuration.Text);
            gun.SpeedMultiplier = float.Parse(speedMultiplier.Text);
            gun.AppliesKnockbackToPlayer = (bool)appliesKnockbackToPlayer.IsChecked;
            gun.PlayerKnockbackForce = float.Parse(playerKnockbackForce.Text);
            gun.DamagesWalls = (bool)damagesWalls.IsChecked;
            gun.ProjectileDamage = float.Parse(projectileDamage.Text);
            gun.ProjectileSpeed = float.Parse(projectileSpeed.Text);
            gun.ProjectileForce = float.Parse(projectileForce.Text);
            gun.ProjectileRange = float.Parse(projectileRange.Text);
            gun.CollidesWithEnemies = (bool)collidesWithEnemies.IsChecked;
            gun.CollidesWithPlayer = (bool)collidesWithPlayer.IsChecked;
            gun.CollidesWithProjectiles = (bool)collidesWithProjectiles.IsChecked;
            gun.CollidesOnlyWithPlayerProjectiles = (bool)collidesWithPlayerProjectiles.IsChecked;
            gun.DoesBounce = (bool)doesBounce.IsChecked;
            gun.NumberOfBounces = int.Parse(bounces.Text);
            gun.DoesPierce = (bool)doesPierce.IsChecked;
            gun.NumberOfPierces = int.Parse(pierces.Text);

            var serializerbuilder = new SerializerBuilder();
            serializerbuilder.EmitDefaults();
            var serializer = serializerbuilder.Build();
            var yaml = serializer.Serialize(gun);
            File.WriteAllText(filename, yaml);
        }
    }
}
