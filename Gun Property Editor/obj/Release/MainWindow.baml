   M S B A M L   `   `   `  ���� N  JGun Property Editor, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:Gun_Property_EditorGun_Property_Editor  X TOokii.Dialogs.Wpf, Version=1.0.0.0, Culture=neutral, PublicKeyToken=0c15020868fd6249P:clr-namespace:Ookii.Dialogs.Wpf;assembly=Ookii.Dialogs.WpfOokii.Dialogs.Wpf $    Gun_Property_Editor.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     3local!clr-namespace:Gun_Property_Editor     LOokii:clr-namespace:Ookii.Dialogs.Wpf;assembly=Ookii.Dialogs.Wpf       � Title$  Gun Property Editor��$��482.82��$��668.59�� � 
ResizeMode$ CanMinimize=�.��� .+��� -    ��Name$ 
tabControl��$
��Left=�$��400.667��$	��Top=�$��660.59��.@��� $
��Info��.��� ���	#FFE5E5E5.+��� -    ��Name$ gunNameLabel��$��Gun Name��$
��Left=�$��	10,10,0,0q�$	��Top=�$��78.378���� -    ��Name$ gunName��$
��Left=�$��23��$��10,35.96,0,0q� �� TextWrapping$
 Wrap=�$	��Top=�$	��155���� -   $ spriteNameLabel��$��Sprite Name��$
��Left=�$��	10,64,0,0q�$	��Top=��� -   $ 
spriteName��$
��Left=�$��23��$��	10,90,0,0q�$
 Wrap=�$	��Top=�$	��155���� -   $ shortDescLabel��$��Short Description��$
��Left=�$��
10,118,0,0q�$	��Top=��� -   $ 	shortDesc��$
��Left=�$��23��$��
10,144,0,0q�$
 Wrap=�$	��Top=�$	��280���� -   $ longDescLabel��$��Ammonomicon Entry��$
��Left=�$��
10,172,0,0q�$	��Top=��� -	   $ longDesc�� �� AcceptsReturn . $
��Left=�$	��165��$��
10,198,0,0q�$
 Wrap=�$	��Top=�$	��280���� -
    ��Name$ sprite��$
��Left=�$	��131��$��
465,10,0,0q�$	��Top=�$	��180�� �� BitmapScalingMode$ NearestNeighbor=�$��sprites\Pea_Shooter.png���� -   	 ��Name$	 usesCustomSprites��$��Uses Custom Gun Sprites��$
��Left=�$��465,146,0,0q�$	��Top=��� -   $ defaultSpriteLabel��$��Default Sprite��$
��Left=�$��465,166,0,0q�$	��Top=��� -   $ 	spriteDir��$
��Left=�$��84��$��465,192,0,0q�$
 Wrap=�$	��Top=�$	��180���� -   
 ��Name$
 
openSprite��$
��Open��$
��Left=�$��465,281,0,0q�$	��Top=�$��75���� -   $ label2��$��Quality��$
��Left=�$��
170,10,0,0q�$	��Top=��� -    ��Name$ 
qualityBox��$
��Left=�$��
170,36,0,0q�$	��Top=�$	��120�� J� RenderTransformOrigin$ -0.79,-1.166&�$��23��.@��� $��	D Quality��$
��Left=�$	��118���� $��	C Quality��$
��Left=�$	��118���� $��	B Quality��$
��Left=�$	��118���� $��	A Quality��$
��Left=�$	��118���� $��	S Quality��$
��Left=�$	��118���� $��Excluded��$
��Left=�$	��118���� -   $ label3��$��Shoot Style��$
��Left=�$��
170,65,0,0q�$	��Top=��� -   $ shootStyleBox��$
��Left=�$��
170,91,0,0q�$	��Top=�$	��120��.@��� $��Semi-Automatic��$
��Left=�$	��118���� $��	Automatic��$
��Left=�$	��118���� $��Burst��$
��Left=�$	��118���� $��Charged��$
��Left=�$	��118���� $
��Beam��$
��Left=�$	��118���� -   $ fpsLabel��$��
Sprite FPS��$
��Left=�$��465,306,0,0q�$	��Top=��� -   $ 	spriteFps��$
��Left=�$��23��$��465,332,0,0q�$
 Wrap=�$��10��$	��Top=�$	��120���� $��Stats��.��� ���	#FFE5E5E5$��0,-1,0,1q� � ColumnDefinitions �� $��0* ��� $
��207* ��� $
��448* �.+��� -   $	 	hasHoming��$��3��$��
Has Homing��$
��Left=�$��
179,11,0,0q�$	��Top=��� -   $ homingVelocityLabel��$��3��$��Homing Velocity��$
��Left=�$��
179,31,0,0q�$	��Top=��� -   $ homingVelocity��$��3��$
��Left=�$��23��$��
179,57,0,0q�$
 Wrap=�$	��Top=�$	��120��$��160.0���� -   $ homingRangeLabel��$��3��$��Homing Range��$
��Left=�$��
179,80,0,0q�$	��Top=��� -   $ homingRange��$��3��$
��Left=�$��23��$��179,106,0,0q�$
 Wrap=�$	��Top=�$	��120��$	��5.0���� -   $	 	usesMoney��$��3��$��Uses Money to Shoot��$
��Left=�$��179,143,0,0q�$	��Top=��� -   $ moneyPerShot��$��3��$
��Left=�$��23��$��179,189,0,0q�$
 Wrap=�$��1��$	��Top=�$	��120���� -   $ 
moneyLabel��$��3��$��Money Per Shot��$
��Left=�$��179,163,0,0q�$	��Top=��� -   $ maxAmmoLabel��$��2��$��Max Ammo��$
��Left=�$��10,4,0,0q�$	��Top=��� -   $ maxAmmo��$��2��$
��Left=�$��23��$��	10,30,0,0q�$
 Wrap=�$	��500��$	��Top=�$	��120���� -   $ shotsInClipLabel��$��2��$��Shots in Clip��$
��Left=�$��	10,52,0,0q�$	��Top=��� -    $ shotsInClip��$��2��$
��Left=�$��23��$��	10,78,0,0q�$
 Wrap=�$��5��$	��Top=�$	��120���� -!   $ ammoCostLabel��$��2��$��Ammo Cost Per Shot��$
��Left=�$��
10,101,0,0q�$	��Top=�$ -1.535,-1.205&��� -"   $ ammoCost��$��2��$
��Left=�$��23��$��
10,127,0,0q�$
 Wrap=�$��1��$	��Top=�$	��120���� -#   $ angleVarianceLabel��$��2��$��Angle Variance Of Shots��$
��Left=�$��
10,150,0,0q�$	��Top=�$ -1.535,-1.205&��� -$   $ angleVariance��$��2��$
��Left=�$��23��$��
10,176,0,0q�$
 Wrap=�$	��8.0��$	��Top=�$	��120���� -%   $ reloadTimeLabel��$��2��$��Reload Time��$
��Left=�$��
10,199,0,0q�$	��Top=��� -&   $ 
reloadTime��$��2��$
��Left=�$��23��$��
10,225,0,0q�$
 Wrap=�$	��1.0��$	��Top=�$	��120���� -'   $ cooldownTimeLabel��$��2��$��Time Between Shots��$
��Left=�$��
10,248,0,0q�$	��Top=��� -(   $ cooldownTime��$��2��$
��Left=�$��23��$��
10,274,0,0q�$
 Wrap=�$	��0.5��$	��Top=�$	��120���� -)   $ burstCooldownTimeLabel��$��2��$��Time Between Bursts��$
��Left=�$��
10,297,0,0q�$	��Top=�$y�Hidden=��� -*   $ burstCooldownTime��$��2��$
��Left=�$��23��$��
10,323,0,0q�$
 Wrap=�$	��1.0��$	��Top=�$	��120��$y�Hidden=��� -+   $ burstShotCountLabel��$��3��$��Burst Shot Count��$
��Left=�$��135,297,0,0q�$	��Top=�$y�Hidden=��� -,   $ burstShotCount��$��3��$
��Left=�$��23��$��135,323,0,0q�$
 Wrap=�$��3��$	��Top=�$	��120��$y�Hidden=��� --   $ 
chargeTime��$��2��$
��Left=�$��23��$��
10,323,0,0q�$
 Wrap=�$	��1.0��$	��Top=�$	��120���� -.   $ chargeTimeLabel��$��2��$��Charge Time��$
��Left=�$��
10,297,0,0q�$	��Top=��� -/   $	 canGainAmmo��$��3��$��Can Gain Ammo��$
��Left=�$��179,237,0,0q�$	��Top=� d� 	IsChecked$
 TrueY��� -0   $	 infiniteAmmo��$��3��$��Infinite Ammo��$
��Left=�$��179,217,0,0q�$	��Top=��� -1   $	 	canBeSold��$��3��$��Can Be Sold��$
��Left=�$��179,257,0,0q�$	��Top=��� -2   $	 customShopPriceCheck��$��Custom Shop Price��$
��Left=�$��
139,11,0,0q�$	��Top=�$��2���� -3   $ customShopPrice��$
��Left=�$��23��$��
139,29,0,0q�$
 Wrap=�$��40��$	��Top=�$	��120��$��2���� -4   $	 canBeDropped��$��Can Be Dropped��$
��Left=�$��
139,57,0,0q�$	��Top=�$��2���� -5   $	 localActiveReload��$��Active Reload��$��2��$
��Left=�$��
139,77,0,0q�$	��Top=��� -6   $	 respawnsIfPitfall��$%��Respawns If Fallen Into Pitfall��$��2��$
��Left=�$��
139,97,0,0q�$	��Top=��� -7   $	 blankDuringReload��$��Blank During Reload��$��2��$
��Left=�$��139,117,0,0q�$	��Top=��� -8   $ blankKnockbackPowerLabel��$��Blank Knockback Power��$��2��$
��Left=�$��139,135,0,0q�$	��Top=��� -9   $ blankKnockbackPower��$��2��$
��Left=�$��23��$��139,161,0,0q�$
 Wrap=�$
��10.0��$	��Top=�$	��120���� -:   $ blankRadiusLabel��$��Blank Radius��$��2��$
��Left=�$��139,184,0,0q�$	��Top=��� -;   $ blankRadius��$��2��$
��Left=�$��23��$��139,210,0,0q�$
 Wrap=�$
��10.0��$	��Top=�$	��120���� -<   $ blankDamageLabel��$��Blank Damage To Enemies��$��2��$
��Left=�$��139,233,0,0q�$	��Top=��� -=   $ blankDamage��$��2��$
��Left=�$��23��$��139,259,0,0q�$
 Wrap=�$	��5.0��$	��Top=�$	��120���� ->   $  blankDamageMultiplierLabel��$+��%Blank Damage Multiplier on Empty Clip��$��2��$
��Left=�$��139,282,0,0q�$	��Top=��� -?   $ blankDamageMultiplier��$��2��$
��Left=�$��23��$��139,309,0,0q�$
 Wrap=�$	��2.0��$	��Top=�$	��120���� $��Advanced��.��� ���	#FFE5E5E5 �� $��0* ��� .+��� -@   $	 reflectBullets��$��2��$$��Reflects Bullets During Reload��$
��Left=�$��	10,10,0,0q�$	��Top=��� -A   $	 usesScreenShake��$��2��$��Uses Screen Shake��$
��Left=�$��
200,10,0,0q�$	��Top=��� -B   $	 directionlessScreenShake��$��2��$��Directionless��$
��Left=�$��
200,30,0,0q�$	��Top=��� -C   $ screenShakeMagnitudeLabel��$��2��$��Screen Shake Magnitude��$
��Left=�$��
200,50,0,0q�$	��Top=��� -D   $ screenShakeMagnitude��$��2��$
��Left=�$��23��$��
200,76,0,0q�$
 Wrap=�$	��0.5��$	��Top=�$	��120���� -E   $ screenShakeSpeedLabel��$��2��$��Screen Shake Speed��$
��Left=�$��200,104,0,0q�$	��Top=��� -F   $ screenShakeSpeed��$��2��$
��Left=�$��23��$��200,130,0,0q�$
 Wrap=�$	��0.5��$	��Top=�$	��120���� -G   $ screenShakeTimeLabel��$��2��$��Screen Shake Time��$
��Left=�$��200,158,0,0q�$	��Top=��� -H   $ screenShakeTime��$��2��$
��Left=�$��23��$��200,184,0,0q�$
 Wrap=�$	��0.1��$	��Top=�$	��120���� -I   $ screenShakeFalloffLabel��$��2��$��Screen Shake Falloff��$
��Left=�$��201,212,0,0q�$	��Top=��� -J   $ screenShakeFalloff��$��2��$
��Left=�$��23��$��200,238,0,0q�$
 Wrap=�$	��0.1��$	��Top=�$	��120���� -K   $	 usesBossDamageModifier��$��2��$!��Uses Boss Damage Multiplier��$
��Left=�$��	10,30,0,0q�$	��Top=��� -L   $ bossDamageModifier��$��2��$
��Left=�$��23��$��	10,50,0,0q�$
 Wrap=�$	��1.5��$	��Top=�$	��120���� -M   $! additionalClipCapacityLabel��$��2��$��Additional Clip Capacity��$
��Left=�$��	10,78,0,0q�$	��Top=��� -N   $ additionalClipCapacity��$��2��$
��Left=�$��23��$��
10,104,0,0q�$
 Wrap=�$��0��$	��Top=�$	��120���� -O   $(	 "usesShotgunStyleVelocityRandomizer��$��2��$'��!Shotgun Style Velocity Randomizer��$
��Left=�$��
341,10,0,0q�$	��Top=��� -P   $ armorToGainOnPickupLabel��$��2��$��Armor Gained On Pickup��$
��Left=�$��
10,132,0,0q�$	��Top=�$ -3.105,-1.269&��� -Q   $ armorToGainOnPickup��$��2��$
��Left=�$��23��$��
10,158,0,0q�$
 Wrap=�$��0��$	��Top=�$	��120���� -R   $ finalSpeedMinLabel��$��2��$+��%Decreased Final Speed Percent Minimum��$
��Left=�$��
341,30,0,0q�$	��Top=��� -S   $" decreaseFinalSpeedPercentMin��$��2��$
��Left=�$��23��$��
341,56,0,0q�$
 Wrap=�$	��5.0��$	��Top=�$	��120���� -T   $ finalSpeedMaxLabel��$��2��$+��%Increased Final Speed Percent Maximum��$
��Left=�$��
341,84,0,0q�$	��Top=��� -U   $" increaseFinalSpeedPercentMax��$��2��$
��Left=�$��23��$��341,110,0,0q�$
 Wrap=�$	��5.0��$	��Top=�$	��120���� -V   $	 clearsCooldownsLikeAwp��$��2��$��Clears Cooldowns Like AWP��$
��Left=�$��
10,186,0,0q�$	��Top=��� -W   $	 canSneakAttack��$��2��$��Can Sneak Attack��$
��Left=�$��341,141,0,0q�$	��Top=��� -X   $! sneakAttackDamageMultiplier��$��2��$
��Left=�$��23��$��341,184,0,0q�$
 Wrap=�$	��3.0��$	��Top=�$	��120���� -Y   $&  sneakAttackDamageMultiplierLabel��$��2��$$��Sneak Attack Damage Multiplier��$
��Left=�$��341,158,0,0q�$	��Top=��� -Z   $	 usesActiveItemRecharge��$��2��$ ��Active Item Style Recharge��$
��Left=�$��
10,206,0,0q�$	��Top=��� -[   $# activeItemStyleRechargeAmount��$��2��$
��Left=�$��23��$��
10,226,0,0q�$
 Wrap=�$��100.0��$	��Top=�$	��120���� -\   $	 persistsOnDeath��$��2��$��Persists On Death��$
��Left=�$��
10,254,0,0q�$	��Top=��� -]   $	 persistsOnPurchase��$��2��$��Persists On Purchase��$
��Left=�$��
10,274,0,0q�$	��Top=��� -^   $	 canCriticalFire��$��2��$��Can Critical Hit��$
��Left=�$��341,212,0,0q�$	��Top=��� -_   $ criticalChanceLabel��$��2��$��Critical Chance��$
��Left=�$��341,227,0,0q�$	��Top=��� -`   $ criticalChance��$��2��$
��Left=�$��23��$��341,252,0,0q�$
 Wrap=�$	��0.1��$	��Top=�$	��120���� -a   $ criticalDamageLabel��$��2��$ ��Critical Damage Multiplier��$
��Left=�$��341,280,0,0q�$	��Top=��� -b   $ criticalDamage��$��2��$
��Left=�$��23��$��341,306,0,0q�$
 Wrap=�$	��0.1��$	��Top=�$	��120���� -c   $%	 gainsRateOfFireAsContinueAttack��$��2��$%��Gains Rate of Fire While Firing��$
��Left=�$��	9,294,0,0q�$	��Top=��� -d   $ rateOfFireMultiplierLabel��$��2��$1��+Rate of Fire Multiplier Addition Per Second��$
��Left=�$��
10,309,0,0q�$	��Top=��� -e   $ rateOfFireMultiplier��$��2��$
��Left=�$��23��$��
10,335,0,0q�$
 Wrap=�$	��5.0��$	��Top=�$	��120���� $��Projectile Properties��.��� ���	#FFE5E5E5 �� $��0* ��� .+��� -f   $ getProjectile�� �� SelectedValuePath$ Content�� �� 
IsEditable . $
��Left=�$��	10,41,0,0q�$	��Top=�$	��219��$��1��$��22��.@��� $
��Lamp��$
��Left=�$	��200���� $��Winchester_Shotgun��$
��Left=�$	��200���� $��Thompson��$
��Left=�$	��200���� $��Screech_Gun��$
��Left=�$	��200���� $��Sticky_Crossbow��$
��Left=�$	��200���� $	��AWP��$
��Left=�$	��200���� $��Zorgun��$
��Left=�$	��200���� $��Fish_Barrel_gun��$
��Left=�$	��200���� $	��Bow��$
��Left=�$	��200���� $��Dueling_Pistol��$
��Left=�$	��200���� $��Super Soaker��$
��Left=�$	��200���� $��CrossBow��$
��Left=�$	��200���� $��Plasma_Rifle��$
��Left=�$	��200���� $��Beehive��$
��Left=�$	��200���� $��AK-47��$
��Left=�$	��200���� $��Yari_Rocket_Launcher��$
��Left=�$	��200���� $��Earthworm Gun��$
��Left=�$	��200���� $��Looper��$
��Left=�$	��200���� $��M79_Grenade_Launcher��$
��Left=�$	��200���� $��moonrakerLaser��$
��Left=�$	��200���� $	��BSG��$
��Left=�$	��200���� $��Bro Revolver Red��$
��Left=�$	��200���� $��desertEagle��$
��Left=�$	��200���� $��Dart_Gun��$
��Left=�$	��200���� $��M1��$
��Left=�$	��200���� $��Nailgun��$
��Left=�$	��200���� $��Zapper��$
��Left=�$	��200���� $��Mailbox_Gun��$
��Left=�$	��200���� $��	Spine_Gun��$
��Left=�$	��200���� $��M1911��$
��Left=�$	��200���� $��Klobb��$
��Left=�$	��200���� $
��dl45��$
��Left=�$	��200���� $��Eyeball_Gun��$
��Left=�$	��200���� $��Bro Revolver Green��$
��Left=�$	��200���� $��Mega Buster��$
��Left=�$	��200���� $��Serious Cannon��$
��Left=�$	��200���� $��Magnum��$
��Left=�$	��200���� $	��RPG��$
��Left=�$	��200���� $��	FreezeRay��$
��Left=�$	��200���� $��	Samus Arm��$
��Left=�$	��200���� $	��Uzi��$
��Left=�$	��200���� $��	Skull_Gun��$
��Left=�$	��200���� $��	boltRifle��$
��Left=�$	��200���� $��Sniper Rifle��$
��Left=�$	��200���� $	��SAA��$
��Left=�$	��200���� $��shotgun��$
��Left=�$	��200���� $��Crescent_Moon_Crossbow��$
��Left=�$	��200���� $��
Golden_Gun��$
��Left=�$	��200���� $��	Bowcaster��$
��Left=�$	��200���� $��space_shotgun��$
��Left=�$	��200���� $��
38_special��$
��Left=�$	��200���� $��Pulse_Handgun��$
��Left=�$	��200���� $��space_rifle��$
��Left=�$	��200���� $��E12_Blaster_Rifle��$
��Left=�$	��200���� $��
Demon_Head��$
��Left=�$	��200���� $��Bundle_Wands��$
��Left=�$	��200���� $��colt1851��$
��Left=�$	��200���� $��Makarov��$
��Left=�$	��200���� $	��SNS��$
��Left=�$	��200���� $��Bladerunner��$
��Left=�$	��200���� $��Elephant_Gun��$
��Left=�$	��200���� $��Raw_Iron_Gun��$
��Left=�$	��200���� $��Minigun��$
��Left=�$	��200���� $��SPMA1��$
��Left=�$	��200���� $��Radiation_Laser��$
��Left=�$	��200���� $��Robot_Gunhand��$
��Left=�$	��200���� $��Knav3��$
��Left=�$	��200���� $��Beholster_Gun��$
��Left=�$	��200���� $��H4MMER��$
��Left=�$	��200���� $��Missile_Launcher��$
��Left=�$	��200���� $ ��Gold_Double_Barrel_Shotgun��$
��Left=�$	��200���� $��MAC10��$
��Left=�$	��200���� $��AKey-47��$
��Left=�$	��200���� $	��M16��$
��Left=�$	��200���� $��
Polar_Star��$
��Left=�$	��200���� $��	Excaliber��$
��Left=�$	��200���� $��Rusty_Sidearm��$
��Left=�$	��200���� $��Unicorn_Horn 2��$
��Left=�$	��200���� $��Raiden_Laser��$
��Left=�$	��200���� $��Energy_Cannon��$
��Left=�$	��200���� $��Blunderbuss��$
��Left=�$	��200���� $��Pulse_Rifle��$
��Left=�$	��200���� $��Cactus��$
��Left=�$	��200���� $��Burning_Hand��$
��Left=�$	��200���� $��Crossbow_Shotgun��$
��Left=�$	��200���� $��Purple_Raygun��$
��Left=�$	��200���� $��
Box_Rocket��$
��Left=�$	��200���� $��Ice_Gun��$
��Left=�$	��200���� $��Yellow_Blaster��$
��Left=�$	��200���� $��Shotgun_Hate��$
��Left=�$	��200���� $��Magic_Revolver��$
��Left=�$	��200���� $��Dragonbreath_Machine_Gun��$
��Left=�$	��200���� $��Electric_Guitar_Gun��$
��Left=�$	��200���� $��
TShirt_Gun��$
��Left=�$	��200���� $��Squad_Green_Gun��$
��Left=�$	��200���� $��Squad_Red_Gun��$
��Left=�$	��200���� $��Electric_Rifle��$
��Left=�$	��200���� $��	Trash_Gun��$
��Left=�$	��200���� $��Plasma_Cell_Gun��$
��Left=�$	��200���� $��Bigiron��$
��Left=�$	��200���� $��Black_Hole_Gun��$
��Left=�$	��200���� $��Rectangle_Gun��$
��Left=�$	��200���� $��Ant_Gun��$
��Left=�$	��200���� $��
Jet_Engine��$
��Left=�$	��200���� $��Crestfallen_Gun��$
��Left=�$	��200���� $��Proton_Pack_Beam��$
��Left=�$	��200���� $��Noisy_Cricket��$
��Left=�$	��200���� $��Winchester_rifle��$
��Left=�$	��200���� $��Mauser_Pistol��$
��Left=�$	��200���� $��Lawgiver��$
��Left=�$	��200���� $��Machine_Gun_Hand��$
��Left=�$	��200���� $��Fossilized_Gun��$
��Left=�$	��200���� $��Pea_Shooter��$
��Left=�$	��200���� $��Urn_Gun��$
��Left=�$	��200���� $��Crystal_Gun��$
��Left=�$	��200���� $��Bow_Charmed��$
��Left=�$	��200���� $��Sawedoff_Shotgun��$
��Left=�$	��200���� $��Rusty_Goop_Gun��$
��Left=�$	��200���� $��Syringe_Gun��$
��Left=�$	��200���� $��	BulletBow��$
��Left=�$	��200���� $��AK-47_tutorial��$
��Left=�$	��200���� $��Cold_45��$
��Left=�$	��200���� $��Ice_Breakers_Gun��$
��Left=�$	��200���� $��Distortion_Launcher��$
��Left=�$	��200���� $��Future_Assault_Rifle��$
��Left=�$	��200���� $��Twin_Energy_Blaster��$
��Left=�$	��200���� $��Gilded_Hydra��$
��Left=�$	��200���� $��ArtfulDodger_ChallengeGun��$
��Left=�$	��200���� $��Matter_Antimatter_Gun��$
��Left=�$	��200���� $��	Flare_Gun��$
��Left=�$	��200���� $��Molotov_Cocktail_Launcher��$
��Left=�$	��200���� $��Sailgun��$
��Left=�$	��200���� $��Charge_Shot��$
��Left=�$	��200���� $��Zilla_Combat_Shotgun��$
��Left=�$	��200���� $��Electro_Shark_Gun��$
��Left=�$	��200���� $��Disintegrator��$
��Left=�$	��200���� $��Bomb_Gun��$
��Left=�$	��200���� $��
Mutant_Arm��$
��Left=�$	��200���� $��Wind_Up_Gun��$
��Left=�$	��200���� $��Pillow��$
��Left=�$	��200���� $��	Pitchfork��$
��Left=�$	��200���� $��Composite_Gun��$
��Left=�$	��200���� $��Mask_Gun��$
��Left=�$	��200���� $��Wood_Gun��$
��Left=�$	��200���� $��Lower_Case_r��$
��Left=�$	��200���� $��Saw_Gun��$
��Left=�$	��200���� $��Excaliber_Green��$
��Left=�$	��200���� $��Shotgun_Axe��$
��Left=�$	��200���� $��Shotgrub��$
��Left=�$	��200���� $
��Claw��$
��Left=�$	��200���� $��Railgun��$
��Left=�$	��200���� $��	Shark_Gun��$
��Left=�$	��200���� $��Snakepoof_Gun��$
��Left=�$	��200���� $��Cerebral_Bore��$
��Left=�$	��200���� $��	Trick_Gun��$
��Left=�$	��200���� $��
ME_Shotgun��$
��Left=�$	��200���� $��Meat_Launcher��$
��Left=�$	��200���� $��Railgun Variant��$
��Left=�$	��200���� $��Nikita��$
��Left=�$	��200���� $��	Block_Gun��$
��Left=�$	��200���� $��Swordgun��$
��Left=�$	��200���� $��	Derringer��$
��Left=�$	��200���� $��Shotgun_Love��$
��Left=�$	��200���� $��Shieldmet_Gun��$
��Left=�$	��200���� $��Triple_Crossbow��$
��Left=�$	��200���� $��Sling��$
��Left=�$	��200���� $��Flash_Raygun��$
��Left=�$	��200���� $��Phoenix��$
��Left=�$	��200���� $��Magic_Sniper_Rifle��$
��Left=�$	��200���� $��Ice_Giant_Gun��$
��Left=�$	��200���� $��Mjolnir��$
��Left=�$	��200���� $��	Anvil_Gun��$
��Left=�$	��200���� $��Mining_Laser��$
��Left=�$	��200���� $��Hybrid_Magic_Gun��$
��Left=�$	��200���� $��
Engine_Gun��$
��Left=�$	��200���� $��Snowball_Launcher��$
��Left=�$	��200���� $��Mermaid_Gun��$
��Left=�$	��200���� $��Rattler_Shotgun��$
��Left=�$	��200���� $��	Blasphemy��$
��Left=�$	��200���� $��Trident��$
��Left=�$	��200���� $��	Scrambler��$
��Left=�$	��200���� $��	Shellegun��$
��Left=�$	��200���� $��Tentacle_Gun��$
��Left=�$	��200���� $��
Quad_Laser��$
��Left=�$	��200���� $��Cash_Register_Gun��$
��Left=�$	��200���� $��Origami_Gun��$
��Left=�$	��200���� $��
Banana_Gun��$
��Left=�$	��200���� $��Super_Meat_Gun��$
��Left=�$	��200���� $��
Kirkcannon��$
��Left=�$	��200���� $��
Camera_Gun��$
��Left=�$	��200���� $��Guzheng��$
��Left=�$	��200���� $��Poxcannon_Gun��$
��Left=�$	��200���� -g   $ getProjectileFrom��$��Get Projectile From��$
��Left=�$��	10,10,0,0q�$	��Top=�$ -7.417,-1.91&�$��1��$��26��$	��152���� -h   $$ projectileScaleMultiplierLabel��$��2��$!��Projectile Scale Multiplier��$
��Left=�$��	10,68,0,0q�$	��Top=��� -i   $ projectileScaleMultiplier��$��2��$
��Left=�$��23��$��	10,94,0,0q�$
 Wrap=�$	��1.0��$	��Top=�$	��120���� -j   $	 appliesKnockbackToPlayer��$��2��$!��Applies Knockback to Player��$
��Left=�$��
281,16,0,0q�$	��Top=��� -k   $ knockbackForceLabel��$��2��$��Player Knockback Force��$
��Left=�$��
281,36,0,0q�$	��Top=��� -l   $ playerKnockbackForce��$��2��$
��Left=�$��23��$��
281,62,0,0q�$
 Wrap=�$
��10.0��$	��Top=�$	��120���� -m   $	 damagesWalls��$��2��$��Damages Walls��$
��Left=�$��
489,16,0,0q�$	��Top=��� -n   $ projectileDamageLabel��$��2��$��Damage��$
��Left=�$��
10,122,0,0q�$	��Top=��� -o   $ projectileDamage��$��2��$
��Left=�$��23��$��
10,148,0,0q�$
 Wrap=�$	��9.0��$	��Top=�$	��120���� -p   $ 
speedLabel��$��2��$��Speed��$
��Left=�$��135,122,0,0q�$	��Top=��� -q   $ projectileSpeed��$��2��$
��Left=�$��23��$��135,148,0,0q�$
 Wrap=�$
��15.0��$	��Top=�$	��120���� -r   $ 
forceLabel��$��2��$��Force��$
��Left=�$��260,122,0,0q�$	��Top=��� -s   $ projectileForce��$��2��$
��Left=�$��23��$��260,148,0,0q�$
 Wrap=�$	��5.0��$	��Top=�$	��120���� -t   $ 
rangeLabel��$��2��$��Range��$
��Left=�$��385,122,0,0q�$	��Top=��� -u   $ projectileRange��$��2��$
��Left=�$��23��$��385,148,0,0q�$
 Wrap=�$
��10.0��$	��Top=�$	��120���� -v   $	 collidesWithEnemies��$��2��$��Collides With Enemies��$
��Left=�$��
10,176,0,0q�$	��Top=��� -w   $	 collidesWithPlayer��$��2��$��Collides With Player��$
��Left=�$��
10,196,0,0q�$	��Top=��� -x   $	 collidesWithProjectiles��$��2��$��Collides With Projectiles��$
��Left=�$��
10,216,0,0q�$	��Top=��� -y   $#	 collidesWithPlayerProjectiles��$��2��$+��%Collides Only With Player Projectiles��$
��Left=�$��
10,236,0,0q�$	��Top=��� -z   $	 
doesBounce��$��2��$��Bounce��$
��Left=�$��260,176,0,0q�$	��Top=��� -{   $ bounces��$��2��$
��Left=�$��23��$��260,196,0,0q�$
 Wrap=�$	��Top=�$	��120��$��5���� -|   $	 
doesPierce��$��2��$��Pierce��$
��Left=�$��385,176,0,0q�$	��Top=��� -}   $ pierces��$��2��$
��Left=�$��23��$��385,196,0,0q�$
 Wrap=�$	��Top=�$	��120��$��5���� -~   $ numberOfShotsLabel��$��2��$��Number Of Shots��$
��Left=�$��
489,36,0,0q�$	��Top=��� -   $ numberOfShots��$��2��$
��Left=�$��23��$��
489,62,0,0q�$
 Wrap=�$��1��$	��Top=�$	��120���� $��Status Effects��$
��Left=�$��20��$	��Top=�.��� ���	#FFE5E5E5 �� $��0* ��� .+��� -�   $	 stunsEnemies��$��2��$��Stuns Enemies��$
��Left=�$��	127,9,0,0q�$	��Top=�$	��100���� -�   $ stunChanceLabel��$��2��$��Stun Chance��$
��Left=�$��
127,29,0,0q�$	��Top=�$ 0.491,0.526&��� -�   $ 
stunChance��$��2��$
��Left=�$��23��$��
127,55,0,0q�$
 Wrap=�$	��Top=�$	��120��$	��0.3���� -�   $ stunDurationLabel��$��2��$��Stun Duration��$
��Left=�$��
127,78,0,0q�$	��Top=�$ 0.491,0.526&��� -�   $ stunDuration��$��2��$
��Left=�$��23��$��127,104,0,0q�$
 Wrap=�$	��Top=�$	��120��$	��5.0���� -�   $	 bleedsEnemies��$��2��$��Bleeds Enemies��$
��Left=�$��	265,9,0,0q�$	��Top=�$	��100���� -�   $ bleedChanceLabel��$��2��$��Bleed Chance��$
��Left=�$��
265,29,0,0q�$	��Top=�$ 0.491,0.526&��� -�   $ bleedDurationLabel��$��2��$��Bleed Duration��$
��Left=�$��
265,78,0,0q�$	��Top=�$ 0.491,0.526&��� -�   $ bleedChance��$��2��$
��Left=�$��23��$��
265,55,0,0q�$
 Wrap=�$	��Top=�$	��120��$	��0.3���� -�   $ bleedDuration��$��2��$
��Left=�$��23��$��265,104,0,0q�$
 Wrap=�$	��Top=�$	��120��$	��5.0���� -�   $	 charmsEnemies��$��2��$��Charms Enemies��$
��Left=�$��	404,9,0,0q�$	��Top=�$	��113���� -�   $ charmChanceLabel��$��2��$��Charm Chance��$
��Left=�$��
404,29,0,0q�$	��Top=�$ 0.491,0.526&��� -�   $ charmChance��$��2��$
��Left=�$��23��$��
404,55,0,0q�$
 Wrap=�$	��Top=�$	��120��$	��0.3���� -�   $ charmDurationLabel��$��2��$��Charm Duration��$
��Left=�$��
404,78,0,0q�$	��Top=�$ 0.491,0.526&��� -�   $ charmDuration��$��2��$
��Left=�$��23��$��404,104,0,0q�$
 Wrap=�$	��Top=�$	��120��$	��5.0���� -�   $	 firesEnemies��$��2��$��Burns Enemies��$
��Left=�$��265,132,0,0q�$	��Top=�$	��113���� -�   $ fireChanceLabel��$��2��$��Burn Chance��$
��Left=�$��265,152,0,0q�$	��Top=�$ 0.491,0.526&��� -�   $ 
fireChance��$��2��$
��Left=�$��23��$��265,178,0,0q�$
 Wrap=�$	��Top=�$	��120��$	��0.3���� -�   $ fireDurationLabel��$��2��$��Burn Duration��$
��Left=�$��265,201,0,0q�$	��Top=�$ 0.491,0.526&��� -�   $ fireDuration��$��2��$
��Left=�$��23��$��265,227,0,0q�$
 Wrap=�$	��Top=�$	��120��$	��5.0���� -�   $	 freezesEnemies��$��2��$��Freezes Enemies��$
��Left=�$��127,132,0,0q�$	��Top=�$	��120���� -�   $ freezeChanceLabel��$��2��$��Freeze Chance��$
��Left=�$��127,152,0,0q�$	��Top=�$ 0.491,0.526&��� -�   $ freezeChance��$��2��$
��Left=�$��23��$��127,178,0,0q�$
 Wrap=�$	��Top=�$	��120��$	��0.3���� -�   $ freezeDurationLabel��$��2��$��Freeze Duration��$
��Left=�$��127,201,0,0q�$	��Top=�$ 0.491,0.526&��� -�   $ freezeDuration��$��2��$
��Left=�$��23��$��127,227,0,0q�$
 Wrap=�$	��Top=�$	��120��$	��5.0���� -�   $	 speedsEnemies��$��2��$��Speeds Enemies��$
��Left=�$��404,132,0,0q�$	��Top=�$	��113���� -�   $ speedChanceLabel��$��2��$��Speed Chance��$
��Left=�$��404,152,0,0q�$	��Top=�$ 0.491,0.526&��� -�   $ speedChance��$��2��$
��Left=�$��23��$��404,178,0,0q�$
 Wrap=�$	��Top=�$	��120��$	��0.3���� -�   $ speedDuration��$��2��$
��Left=�$��23��$��404,227,0,0q�$
 Wrap=�$	��Top=�$	��120��$	��5.0���� -�   $ speedDurationLabel��$��2��$��Speed Duration��$
��Left=�$��404,201,0,0q�$	��Top=�$ 0.491,0.526&��� -�   $ speedMultiplierLabel��$��2��$��Speed Multiplier��$
��Left=�$��404,248,0,0q�$	��Top=�$ 0.491,0.526&��� -�   $ speedMultiplier��$��2��$
��Left=�$��23��$��404,274,0,0q�$
 Wrap=�$	��Top=�$	��120��$	��2.0���� -�   $	 poisonsEnemies��$��2��$��Poisons Enemies��$
��Left=�$��127,255,0,0q�$	��Top=�$	��120���� -�   $ poisonChanceLabel��$��2��$��Poison Chance��$
��Left=�$��127,274,0,0q�$	��Top=�$ 0.491,0.526&��� -�   $ poisonChance��$��2��$
��Left=�$��23��$��127,300,0,0q�$
 Wrap=�$	��Top=�$	��120��$	��0.3���� -�   $
 createButton��$��Create!��$��Center=�$��10,406,453,0q�$	��Top=�$	��200��$��36��