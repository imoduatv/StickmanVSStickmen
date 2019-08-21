using UnityEngine;

public class LocalAdsController : MonoBehaviour
{
	private void Start()
	{
	}

	public void _ShowBanner_1_SniperShooting()
	{
		OpenGameLink("https://play.google.com/store/apps/details?id=com.lf.sniper.gun.shooter.free.apps&referrer=utm_source=Stickman_Ban");
	}

	public void _ShowBanner_2_BikeStuntTrickMaster()
	{
		OpenGameLink("https://play.google.com/store/apps/details?id=com.knights.bikesstunt.motomaster&referrer=utm_source=Stickman_Ban");
	}

	public void _ShowBanner_5_ModernCar()
	{
		OpenGameLink("https://play.google.com/store/apps/details?id=com.volcano.modrn.car.parking.d&referrer=utm_source=Stickman_Ban");
	}

	public void _ShowInterstitial_1_SniperShooting()
	{
		OpenGameLink("https://play.google.com/store/apps/details?id=com.lf.sniper.gun.shooter.free.apps&referrer=utm_source=Stickman_Static");
	}

	public void _ShowInterstitial_2_BikeStuntTrickMaster()
	{
		OpenGameLink("https://play.google.com/store/apps/details?id=com.knights.bikesstunt.motomaster&referrer=utm_source=Stickman_Static");
	}

	public void _ShowInterstitial_5_ModernCar()
	{
		OpenGameLink("https://play.google.com/store/apps/details?id=com.volcano.modrn.car.parking.d&referrer=utm_source=Stickman_Static");
	}

	private void OpenGameLink(string gameURL)
	{
		if (I_InternetConnect.isInternetAvailable)
		{
			Application.OpenURL(gameURL);
		}
	}
}
