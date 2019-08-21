using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Analytics;
using UnityEngine.Audio;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class InGameUI : MonoBehaviour
{
	[SerializeField]
	private Text LevelNo;

	[SerializeField]
	private Text LevelFailHintText;

	[SerializeField]
	private Text PauseText;

	private GameManager gameManager;

	public string levelVersionCode = "VC21";

	public Text TargetShotText;

	public Text TargetTimeText;

	public Text TargetCompleteText;

	public GameObject HudUI;

	public GameObject PauseUi;

	public GameObject GameOverUi;

	public GameObject ReloadRewardPanel;

	public GameObject TimerRewardPanel;

	public GameObject GameCompleteUI;

	public GameObject TargetUI;

	public GameObject TapToContinue;

	public GameObject BloodEffect;

	public GameObject HintBulb;

	public GameObject HintBulbPerma;

	public GameObject Hint;

	public GameObject Clock;

	public GameObject Alarm;

	public GameObject help;

	public GameObject shoothelphand;

	public GameObject helphandl3;

	public GameObject hand4;

	public AudioClip Clocktick;

	public AudioClip ClockAlarm;

	public Text LaserCountText;

	public Text RemTimeText;

	public Text LevelStarterTxt;

	public Text CoinsRecievedText;

	public static bool isComplete;

	public static bool isGuideToStore;

	private SoundController soundcontrol;

	public static InGameUI instance;

	public GameObject rateus_panel;

	public GameObject ShootBtn;

	public GameObject PauseBtn;

	public GameObject TimeBar;

	public GameObject MoveSlider;

	public GameObject lvl20RescueText;

	public GameObject ShootArea;

	public GameObject StarCameraObject;

	public GameObject TempCamObject;

	public GameObject ButtonHider;

	public GameObject CoinSound;

	public GameObject StoreGuide;

	public GameObject[] Lasers;

	public Camera StarCamera;

	private float time;

	public static int failcount;

	public AudioMixerGroup soundmixer;

	private int pausecount;

	public bool PanelsEnabled;

	public static bool isRestart;

	public int TotalStars;

	public int TotalRecievedCoins;

	public GameObject[] completeTxtDetails;

	public bool fail_ad_bool;

	public GameObject shoot_collider_obj;

	public GameObject remove_Ads_fail_panel;

	public GameObject remove_ads_comp_panel;

	public GameObject goto_gun_store_panel;

	public GameObject goto_gun_store_panel_text;

	public string[] remove_Ads_dialogs;

	public string[] store_panel_dialogs;

	public Text NoRewardedTxtPanel_ingame1;

	public Text NoRewardedTxtPanel_ingame2;

	private bool completed_bool;

	private float prevTimeScale = 1f;

	private void Awake()
	{
		PanelsEnabled = false;
		pausecount = 0;
		isComplete = false;
		PauseUi.SetActive(value: false);
		GameOverUi.SetActive(value: false);
		GameCompleteUI.SetActive(value: false);
		instance = this;
		Analytics.CustomEvent("level_start_" + levelVersionCode, new Dictionary<string, object>
		{
			{
				"level_index",
				SceneManager.GetActiveScene().buildIndex - 2
			}
		});
		if (!isRestart)
		{
			isRestart = true;
			TapToContinue.SetActive(value: true);
			Time.timeScale = 0f;
			_ads_manager.Instance.__HideAllBanners();
		}
		else
		{
			Play();
			_ads_manager.Instance.__HideAllBanners();
		}
		HintBulb = GameObject.Find("IdeaBulb");
		if (HintBulb != null)
		{
			HintBulb.transform.GetChild(0).gameObject.GetComponent<SpriteRenderer>().sortingLayerName = "Grass";
		}
		Hint = GameObject.Find("Hint");
		if (failcount >= 1 && SceneManager.GetActiveScene().buildIndex - 2 >= 4 && HintBulb != null)
		{
			HintBulb.transform.GetChild(0).gameObject.SetActive(value: true);
			Invoke("PlayHintSound", 1f);
		}
	}

	private void PlayHintSound()
	{
		soundcontrol.HintBulbSound.Play();
	}

	private void OnEnable()
	{
		GameEvents.OnGameComplete = (EventHandler)Delegate.Combine(GameEvents.OnGameComplete, new EventHandler(OnGameComplete));
		GameEvents.OnGameOver = (EventHandler)Delegate.Combine(GameEvents.OnGameOver, new EventHandler(OnGameOver));
	}

	private void OnDisable()
	{
		GameEvents.OnGameComplete = (EventHandler)Delegate.Remove(GameEvents.OnGameComplete, new EventHandler(OnGameComplete));
		GameEvents.OnGameOver = (EventHandler)Delegate.Remove(GameEvents.OnGameOver, new EventHandler(OnGameOver));
	}

	private void Start()
	{
		isGuideToStore = false;
		if (PlayerPrefs.GetInt("RemoveAds") == 1)
		{
			removeads_btns();
		}
		else
		{
			remove_Ads_dialogs_fun();
			remove_Ads_fail_panel.SetActive(value: true);
			remove_ads_comp_panel.SetActive(value: true);
		}
		fail_ad_bool = false;
		LevelStarterTxt.text = "LEVEL # " + (SceneManager.GetActiveScene().buildIndex - 2);
		TargetShotText.text = GameManager.instance.targetShot + " +";
		TargetTimeText.text = GameManager.instance.targetTime + " +";
		soundcontrol = UnityEngine.Object.FindObjectOfType<SoundController>();
		gameManager = UnityEngine.Object.FindObjectOfType<GameManager>();
		LevelNo.text = SceneManager.GetActiveScene().buildIndex.ToString();
		if ((bool)UnityEngine.Object.FindObjectOfType<MovableCannon>())
		{
			base.transform.GetChild(0).GetChild(3).gameObject.SetActive(value: true);
		}
		if (GameManager.instance.shootareadefault == null)
		{
			ShootArea = GameObject.Find("Shoot");
		}
		else
		{
			ShootArea = GameManager.instance.shootareadefault;
		}
		if (SceneManager.GetActiveScene().buildIndex - 2 == 20)
		{
			TargetCompleteText.text = "Rescue Princess";
		}
		if (UnityEngine.SceneManagement.SceneManager.GetActiveScene().buildIndex == 22 || UnityEngine.SceneManagement.SceneManager.GetActiveScene().buildIndex == 38)
		{
			MoveSlider.SetActive(value: false);
		}
	}

	public void AutoShoot()
	{
		Shoot();
		GameManager.instance.stopTimer = false;
		HUD.instance.canSetCursorPosition = true;
	}

	private void Update()
	{
		LaserCountText.text = gameManager.currentShot.ToString();
		RemTimeText.text = gameManager.currentTime.ToString();
		if (UnityEngine.Input.GetKeyDown(KeyCode.Escape))
		{
			if (GameCompleteUI.activeSelf || GameOverUi.activeSelf)
			{
				isComplete = true;
				HomeButton();
			}
			else if (!PauseUi.activeSelf && HudUI.activeSelf && PauseBtn.activeSelf)
			{
				PauseButton();
			}
			else if (PauseUi.activeSelf)
			{
				ResumeButton();
			}
		}
	}

	public void EnableHint()
	{
		Hint.transform.GetChild(0).gameObject.SetActive(value: true);
		HintBulbPerma.SetActive(value: false);
	}

	public void Play()
	{
		TapToContinue.SetActive(value: false);
		Time.timeScale = 1f;
		UnityEngine.Object.Instantiate(ButtonHider);
		if (SceneManager.GetActiveScene().buildIndex - 2 == 1)
		{
			ShootBtn.SetActive(value: false);
			PauseBtn.SetActive(value: true);
		}
		Invoke("Show", 2f);
		Invoke("PlaySoundGP", 0.25f);
		if (SceneManager.GetActiveScene().buildIndex - 2 == 6)
		{
			MonoBehaviour.print("AutoShoot");
			Invoke("AutoShoot", 3f);
		}
		_ads_manager.Instance.__HideAllBanners();
	}

	private void PlaySoundGP()
	{
		soundcontrol.GetComponent<AudioSource>().Play();
	}

	private void Show()
	{
		HudUI.SetActive(value: true);
		help.SetActive(value: true);
		if (GameObject.FindGameObjectWithTag("FixedCannon") == null)
		{
			MoveSlider.SetActive(value: true);
		}
		if (SceneManager.GetActiveScene().buildIndex - 2 == 19)
		{
			MonoBehaviour.print(MoveSlider);
			MoveSlider.transform.position = new Vector3(250f, 25f, 0f);
			MoveSlider.transform.localRotation = Quaternion.identity;
		}
		if (ShoThis.instance.isHelpLevel)
		{
			soundcontrol.GetComponent<AudioSource>().Pause();
			Invoke("PlayMusic", 1f);
		}
		_ads_manager.Instance.__HideAllBanners();
	}

	private void PlayMusic()
	{
		soundcontrol.GetComponent<AudioSource>().Play();
	}

	public void StartTextAnimation()
	{
		RemTimeText.color = Color.red;
		RemTimeText.gameObject.GetComponent<Animator>().SetTrigger("time");
	}

	private void closehelp()
	{
		MonoBehaviour.print("Cloase Help");
		UnityEngine.Object.Destroy(help);
	}

	public void Shoot()
	{
		gameManager.ShootLaser = true;
		if (SceneManager.GetActiveScene().buildIndex - 2 == 1 || SceneManager.GetActiveScene().buildIndex - 2 == 17)
		{
			closehelp();
		}
		if (GameManager.instance.isBombLevel && gameManager.currentShot <= 0)
		{
			GameEvents.OnGameOver(null, null);
		}
		if (SceneManager.GetActiveScene().buildIndex - 2 == 4)
		{
			closehelp();
		}
		if (SceneManager.GetActiveScene().buildIndex - 2 == 26 && gameManager.HasPower)
		{
			closehelp();
			MonoBehaviour.print(SceneManager.GetActiveScene().buildIndex - 2);
			GameManager.instance.shootareadefault.SetActive(value: true);
			GameManager.instance.shootarea1.SetActive(value: false);
		}
		if (gameManager.currentShot <= 0)
		{
			soundcontrol.NoAmmoSound.Play();
		}
		MonoBehaviour.print("Shoot called");
	}

	public void PauseButton()
	{
		TimeBar.SetActive(value: false);
		PauseBtn.SetActive(value: false);
		HintBulbPerma.SetActive(value: false);
		_ads_manager.Instance._ShowAdmobMediumRectangleBannerAtTopRight();
		CancelInvoke("pauseAds");
		Invoke("pauseAds", 0.25f);
		if (SceneManager.GetActiveScene().buildIndex - 2 >= 6)
		{
			PauseText.text = "Get Free Hint If You Fail This Mission!";
		}
		else
		{
			PauseText.text = "You Can Do It!";
		}
		if (GameManager.instance.alarmaudio != null)
		{
			GameManager.instance.alarmaudio.GetComponent<AudioSource>().Pause();
		}
		if (GameManager.instance.clockaudio != null)
		{
			GameManager.instance.clockaudio.GetComponent<AudioSource>().Pause();
		}
		PauseUi.SetActive(value: true);
		AudioListener.pause = true;
		if (help != null)
		{
			help.SetActive(value: false);
		}
		if (SceneManager.GetActiveScene().buildIndex - 2 == 20 && gameManager.StickManCount <= 0)
		{
			lvl20RescueText.SetActive(value: false);
		}
		PanelsEnabled = true;
	}

	public void ResumeButton()
	{
		TimeBar.SetActive(value: true);
		PauseBtn.SetActive(value: true);
		if (failcount >= 1 && Hint != null && !Hint.transform.GetChild(0).gameObject.activeSelf)
		{
			HintBulbPerma.SetActive(value: true);
		}
		Time.timeScale = 1f;
		PauseUi.SetActive(value: false);
		if (GameManager.instance.alarmaudio != null)
		{
			GameManager.instance.alarmaudio.GetComponent<AudioSource>().Play();
		}
		if (GameManager.instance.clockaudio != null)
		{
			GameManager.instance.clockaudio.GetComponent<AudioSource>().Play();
		}
		AudioListener.pause = false;
		if (help != null)
		{
			help.SetActive(value: true);
		}
		if (SceneManager.GetActiveScene().buildIndex - 2 == 20 && gameManager.StickManCount <= 0)
		{
			lvl20RescueText.SetActive(value: true);
		}
		PanelsEnabled = false;
		CancelInvoke("pauseAds");
		_ads_manager.Instance.__HideAllBanners();
	}

	public void Restart()
	{
		Time.timeScale = 1f;
		SceneManager.LoadScene(SceneManager.GetActiveScene().name);
		if (PlayerPrefs.GetInt("level_restart_" + (SceneManager.GetActiveScene().buildIndex - 2), 0) == 0)
		{
			Analytics.CustomEvent("retry", new Dictionary<string, object>
			{
				{
					"index",
					SceneManager.GetActiveScene().buildIndex - 2
				}
			});
			PlayerPrefs.SetInt("level_restart_" + (SceneManager.GetActiveScene().buildIndex - 2), 1);
		}
		AudioListener.pause = false;
		_ads_manager.Instance.__HideAllBanners();
	}

	public void HomeButton()
	{
		Time.timeScale = 1f;
		isRestart = false;
		SceneManager.LoadScene(2);
		_ads_manager.Instance.__HideAllBanners();
	}

	private void GetTotalStars()
	{
		for (int i = 0; i < 60; i++)
		{
			TotalStars += PlayerPrefs.GetInt("Level" + i + "Stars");
		}
	}

	public void NextLevel()
	{
		isRestart = false;
		if (SceneManager.GetActiveScene().buildIndex - 2 == 60)
		{
			SceneManager.LoadScene(1);
		}
		else
		{
			SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1);
		}
		_ads_manager.Instance.__HideAllBanners();
	}

	private void OnGameComplete(object obj, EventArgs args)
	{
		completed_bool = true;
		ShootBtn.SetActive(value: false);
		PauseBtn.SetActive(value: false);
		TimeBar.SetActive(value: false);
		HintBulbPerma.SetActive(value: false);
		gameManager.timer = true;
		gameManager.alarm = true;
		gameManager.stopTimer = true;
		if (GameManager.instance.alarmaudio != null)
		{
			GameManager.instance.alarmaudio.GetComponent<AudioSource>().Pause();
		}
		if (GameManager.instance.clockaudio != null)
		{
			GameManager.instance.clockaudio.GetComponent<AudioSource>().Pause();
		}
		if ((PlayerPrefs.GetInt("Gun0") == 0 || PlayerPrefs.GetInt("Gun1") == 0 || PlayerPrefs.GetInt("Gun2") == 0 || PlayerPrefs.GetInt("Gun3") == 0 || PlayerPrefs.GetInt("Gun4") == 0) && SceneManager.GetActiveScene().buildIndex - 2 != 60 && (SceneManager.GetActiveScene().buildIndex - 2) % 7 == 0)
		{
			isGuideToStore = true;
		}
		Invoke("complete", 2f);
	}

	private void OnGameOver(object obj, EventArgs args)
	{
		PauseBtn.SetActive(value: false);
		HintBulbPerma.SetActive(value: false);
		gameManager.stopTimer = true;
		gameManager.timer = true;
		gameManager.alarm = true;
		if (GameManager.instance.alarmaudio != null)
		{
			GameManager.instance.alarmaudio.GetComponent<AudioSource>().Pause();
		}
		if (GameManager.instance.clockaudio != null)
		{
			GameManager.instance.clockaudio.GetComponent<AudioSource>().Pause();
		}
		Invoke("over", 3f);
	}

	public void complete()
	{
		if (!GameCompleteUI.activeSelf && !GameOverUi.activeSelf)
		{
			if (isGuideToStore)
			{
				Invoke("show_store_panel", 2f);
			}
			GameManager.instance.SetStars();
			GetTotalStars();
			failcount = 0;
			soundcontrol.GetComponent<AudioSource>().enabled = false;
			showCompleteTxt();
			GameCompleteUI.SetActive(value: true);
			PlayerPrefs.SetInt(SceneManager.GetActiveScene().name, 1);
			if ((int.Parse(LevelNo.text) - 2 == 10 || int.Parse(LevelNo.text) - 2 == 15) && PlayerPrefs.GetInt("rate") != 1)
			{
				rateus_panel.SetActive(value: true);
			}
			else
			{
				ShowStars();
				Invoke("StartCounter", 1f);
				Invoke("completeAds", 0.25f);
			}
			Analytics.CustomEvent("level_complete_" + levelVersionCode, new Dictionary<string, object>
			{
				{
					"level_index",
					SceneManager.GetActiveScene().buildIndex - 2
				}
			});
			if (help != null)
			{
				help.SetActive(value: false);
			}
			PanelsEnabled = true;
		}
	}

	private void ShowGuidePanel()
	{
		StoreGuide.SetActive(value: true);
	}

	public void StartCounter()
	{
		if (UnityEngine.SceneManagement.SceneManager.GetActiveScene().buildIndex != 6)
		{
			StartCoroutine("AddingCoins", TotalRecievedCoins);
		}
		if (UnityEngine.SceneManagement.SceneManager.GetActiveScene().buildIndex == 6)
		{
			CoinsRecievedText.text = GameManager.instance.CoinsRecieved.ToString();
		}
	}

	public void completeAds()
	{
		_ads_manager.Instance._ShowAdmobMediumRectangleBannerAtTopRight();
		if ((SceneManager.GetActiveScene().buildIndex - 2) % 2 == 0)
		{
			_ads_manager.Instance.complete_ad();
		}
	}

	private IEnumerator AddingCoins(int RewardedCoins)
	{
		int temp2 = 0;
		while (temp2 <= RewardedCoins)
		{
			temp2 += 20;
			CoinSound.GetComponent<AudioSource>().Play();
			CoinsRecievedText.text = temp2.ToString();
			yield return new WaitForSeconds(0.05f);
		}
		if (temp2 >= RewardedCoins)
		{
			temp2 = RewardedCoins;
			CoinSound.GetComponent<AudioSource>().Stop();
			CoinsRecievedText.text = temp2.ToString();
		}
	}

	public void failAds()
	{
		if (SceneManager.GetActiveScene().buildIndex - 2 > 1)
		{
			_ads_manager.Instance._ShowAdmobMediumRectangleBannerAtTopRight();
			_ads_manager.Instance.fail_Ads();
		}
	}

	public void pauseAds()
	{
		_ads_manager.Instance.pause_Ads();
		Time.timeScale = 0f;
	}

	public void rate(string name)
	{
		if (name == "rate")
		{
			Application.OpenURL("https://play.google.com/store/apps/details?id=com.gzl.stickman.adventure.game");
			rateus_panel.SetActive(value: false);
			PlayerPrefs.SetInt("rate", 1);
			Invoke("completeAds", 0.25f);
			Invoke("StartCounter", 0.05f);
			ShowStars();
		}
		else if (name == "later")
		{
			rateus_panel.SetActive(value: false);
			Invoke("completeAds", 0.25f);
			Invoke("StartCounter", 0.05f);
			ShowStars();
		}
		else
		{
			rateus_panel.SetActive(value: false);
			PlayerPrefs.SetInt("rate", 1);
			Invoke("completeAds", 0.25f);
			Invoke("StartCounter", 0.05f);
			ShowStars();
		}
	}

	private void rewardoff()
	{
		if (ReloadRewardPanel.activeSelf)
		{
			ReloadRewardPanel.SetActive(value: false);
			MonoBehaviour.print("fail_ad_here6");
			Invoke("failAds", 0.25f);
		}
	}

	private void timer_reward_off()
	{
		if (TimerRewardPanel.activeSelf)
		{
			TimerRewardPanel.SetActive(value: false);
			MonoBehaviour.print("fail_ad_here7");
			Invoke("failAds", 0.25f);
		}
	}

	public void over()
	{
		if (!GameOverUi.activeSelf && !GameCompleteUI.activeSelf)
		{
			if (SceneManager.GetActiveScene().buildIndex - 2 >= 4)
			{
				LevelFailHintText.text = "Try Again For Free Hint!";
			}
			else
			{
				LevelFailHintText.text = "Try Again!";
			}
			soundcontrol.GetComponent<AudioSource>().enabled = false;
			ShootBtn.SetActive(value: false);
			TimeBar.SetActive(value: false);
			GameOverUi.SetActive(value: true);
			full_failed();
		}
	}

	public void full_failed()
	{
		failcount++;
		if (failcount == 2)
		{
			failcount = 0;
			MonoBehaviour.print("fail_ad_here1");
			Invoke("failAds", 0.25f);
		}
		else if (!instance.fail_ad_bool)
		{
			if (GameManager.instance.currentShot <= 0 && GameManager.instance.currentTime <= 0)
			{
				failcount = 0;
				MonoBehaviour.print("fail_ad_here2");
				Invoke("failAds", 0.25f);
			}
			else if (GameManager.instance.currentShot <= 0)
			{
				ReloadRewardPanel.SetActive(value: true);
				Invoke("rewardoff", 6f);
				MonoBehaviour.print("here3");
			}
			else if (GameManager.instance.currentTime <= 0)
			{
				TimerRewardPanel.SetActive(value: true);
				Invoke("timer_reward_off", 6f);
				MonoBehaviour.print("here4");
			}
		}
		else if (instance.fail_ad_bool && failcount != 2 && (PlayerPrefs.GetInt("Gun0") == 0 || PlayerPrefs.GetInt("Gun1") == 0 || PlayerPrefs.GetInt("Gun2") == 0 || PlayerPrefs.GetInt("Gun3") == 0 || PlayerPrefs.GetInt("Gun4") == 0))
		{
			isGuideToStore = true;
			Invoke("show_store_panel", 2f);
		}
		if (PlayerPrefs.GetInt("level_fail_" + (SceneManager.GetActiveScene().buildIndex - 2), 0) == 0)
		{
			Analytics.CustomEvent("level_fail", new Dictionary<string, object>
			{
				{
					"fail",
					SceneManager.GetActiveScene().buildIndex - 2
				}
			});
			PlayerPrefs.SetInt("level_fail_" + (SceneManager.GetActiveScene().buildIndex - 2), 1);
		}
		if (help != null)
		{
			help.SetActive(value: false);
		}
		PanelsEnabled = true;
	}

	private void ShowStars()
	{
		TempCamObject = UnityEngine.Object.Instantiate(StarCameraObject);
		StarCamera = TempCamObject.GetComponent<Camera>();
		TempCamObject.transform.GetChild(0).gameObject.SetActive(value: true);
		TempCamObject.transform.GetChild(0).GetComponent<starFxController>().ea = GameManager.instance.StarsAchieved;
		GetComponent<Canvas>().renderMode = RenderMode.ScreenSpaceCamera;
		GetComponent<Canvas>().worldCamera = StarCamera;
	}

	private void hide_stars()
	{
		TempCamObject.transform.GetChild(0).gameObject.SetActive(value: false);
	}

	public void showCompleteTxt()
	{
		for (int i = 0; i < completeTxtDetails.Length; i++)
		{
			completeTxtDetails[i].SetActive(value: false);
		}
		if (GameManager.isStarForShot)
		{
			completeTxtDetails[1].GetComponent<Text>().text = "Used Minimum Bullets";
		}
		if (GameManager.isStarForTime)
		{
			if (GameManager.isStarForShot)
			{
				completeTxtDetails[2].GetComponent<Text>().text = "Killed Enemy in Minimum Time";
			}
			else
			{
				completeTxtDetails[1].GetComponent<Text>().text = "Killed Enemy in Minimum Time";
				completeTxtDetails[2].GetComponent<Text>().text = "Used Minimum Bullets";
			}
		}
		else
		{
			completeTxtDetails[2].GetComponent<Text>().text = "Killed Enemy in Minimum Time";
			if (!GameManager.isStarForShot)
			{
				completeTxtDetails[1].GetComponent<Text>().text = "Used Minimum Bullets";
			}
		}
		for (int j = 0; j < completeTxtDetails.Length; j++)
		{
			completeTxtDetails[j].SetActive(value: true);
		}
	}

	public void reload_gun_reward()
	{
		MainMenu.videoNumber = 5;
		_ads_manager.Instance.admobRewarded_unity();
	}

	public void timer_increase_reward()
	{
		MainMenu.videoNumber = 6;
		_ads_manager.Instance.admobRewarded_unity();
	}

	public void cancel_invoke_ads()
	{
		if (shoot_collider_obj != null)
		{
			shoot_collider_obj.SetActive(value: true);
		}
		CancelInvoke("timer_reward_off");
		CancelInvoke("rewardoff");
		_ads_manager.Instance.__HideAllBanners();
	}

	public void inAppDeal(int inAppIndex)
	{
		_ads_manager.Instance.inAppDeals(inAppIndex);
	}

	public void removeads_btns()
	{
		remove_Ads_fail_panel.SetActive(value: false);
		remove_ads_comp_panel.SetActive(value: false);
	}

	public void remove_Ads_dialogs_fun()
	{
	}

	public void exit_store_panel()
	{
		isGuideToStore = false;
		if (completed_bool)
		{
			completed_bool = false;
			ShowStars();
		}
		goto_gun_store_panel.SetActive(value: false);
		_ads_manager.Instance._ShowAdmobMediumRectangleBannerAtTopRight();
	}

	public void show_store_panel()
	{
		show_store_panel_dialogs_fun();
		if (completed_bool)
		{
			hide_stars();
		}
		goto_gun_store_panel.SetActive(value: true);
		_ads_manager.Instance.__HideAllBanners();
	}

	public void show_store_panel_dialogs_fun()
	{
		int num = UnityEngine.Random.Range(0, store_panel_dialogs.Length);
		goto_gun_store_panel_text.GetComponent<Text>().text = store_panel_dialogs[num];
	}

	private void OnApplicationFocus(bool focus)
	{
		if (focus)
		{
			Time.timeScale = prevTimeScale;
			return;
		}
		prevTimeScale = Time.timeScale;
		Time.timeScale = 0f;
	}
}
