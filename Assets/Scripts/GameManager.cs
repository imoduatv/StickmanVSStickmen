using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class GameManager : MonoBehaviour
{
	public static GameManager instance;

	public int currentLevel;

	public GameObject SoundPrefab;

	public bool ShootLaser;

	public GameObject InGameUIPrefab;

	public GameObject[] Backgrounds;

	public GameObject Player;

	public GameObject PlayerHead;

	public bool hasStrongPower;

	public int StickManCount;

	public int totalshot = 5;

	public int currentShot;

	public float totalTime = 60f;

	public float targetTime;

	public int currentTime;

	public int targetShot;

	public int StarsAchieved;

	public int CoinsRecieved;

	public Vector3 CursorPos;

	public bool HasPower;

	public LevelData levelData;

	public Color enemycolor;

	public static bool isCompleted;

	public bool timer;

	public bool alarm;

	public bool SetCustomBG;

	public int Bgno;

	public GameObject alarmaudio;

	public GameObject clockaudio;

	public GameObject shootareadefault;

	public GameObject shootarea1;

	public GameObject hand1;

	public GameObject Princess;

	public int helpno;

	public bool isBombLevel;

	public bool isRescueLevel;

	public bool ChangeAngleLevel;

	public bool stopTimer;

	private SoundController soundcontrol;

	public Transform player_pos;

	public static bool isStarForShot;

	public static bool isStarForTime;

	private void Awake()
	{
		if (UnityEngine.Object.FindObjectOfType<InGameUI>() == null)
		{
			Object.Instantiate(InGameUIPrefab);
		}
		else
		{
			UnityEngine.Object.Destroy(UnityEngine.Object.FindObjectOfType<InGameUI>().gameObject);
			Object.Instantiate(InGameUIPrefab);
		}
		if (UnityEngine.Object.FindObjectOfType<SoundController>() == null)
		{
			Object.Instantiate(SoundPrefab);
		}
		else
		{
			UnityEngine.Object.Destroy(UnityEngine.Object.FindObjectOfType<SoundController>().gameObject);
			Object.Instantiate(SoundPrefab);
		}
		base.transform.position = Vector3.zero;
		totalshot = levelData.bulletsc[SceneManager.GetActiveScene().buildIndex].BulletesForLevel;
		totalTime = levelData.bulletsc[SceneManager.GetActiveScene().buildIndex].TotalTimeForLevel;
		targetShot = levelData.bulletsc[SceneManager.GetActiveScene().buildIndex].TargetBulletesForLevel;
		targetTime = levelData.bulletsc[SceneManager.GetActiveScene().buildIndex].TargetTimeForLevel;
		StarsAchieved = 0;
	}

	private void Start()
	{
		instance = this;
		if (SceneManager.GetActiveScene().buildIndex - 2 == 9 || SceneManager.GetActiveScene().buildIndex - 2 == 6)
		{
			MonoBehaviour.print("Level 9 Timer Should Stop");
			stopTimer = true;
		}
		else
		{
			stopTimer = false;
		}
		soundcontrol = UnityEngine.Object.FindObjectOfType<SoundController>();
		timer = false;
		alarm = false;
		currentShot = totalshot;
		currentTime = (int)totalTime;
		StickManCount = GameObject.FindGameObjectsWithTag("Enemy").Length;
		if (!SetCustomBG)
		{
			GameObject gameObject = UnityEngine.Object.Instantiate(Backgrounds[Random.Range(0, Backgrounds.Length)], base.transform.position + new Vector3(0f, 0f, 10f), Quaternion.identity);
			float num = Camera.main.orthographicSize / 3f;
			gameObject.transform.localScale = new Vector3(num, num, num);
			gameObject.transform.parent = base.transform.GetChild(1);
		}
		else if (Bgno == 1)
		{
			GameObject gameObject2 = UnityEngine.Object.Instantiate(Backgrounds[Bgno], base.transform.position + new Vector3(0f, 0f, 10f), Quaternion.identity);
			float num2 = Camera.main.orthographicSize / 3f;
			gameObject2.transform.localScale = new Vector3(num2 + 1.5f, num2 + 1.5f, num2 + 1.5f);
			gameObject2.transform.parent = base.transform.GetChild(1);
		}
		else
		{
			GameObject gameObject3 = UnityEngine.Object.Instantiate(Backgrounds[Bgno], base.transform.position + new Vector3(0f, 0f, 10f), Quaternion.identity);
			float num3 = Camera.main.orthographicSize / 3f;
			gameObject3.transform.localScale = new Vector3(num3 - 3f, num3 - 5f, num3);
			gameObject3.transform.parent = base.transform.GetChild(1);
		}
		Princess = GameObject.Find("Princess");
		Player = GameObject.FindGameObjectWithTag("FixedCannon").transform.GetChild(1).gameObject;
		PlayerHead = GameObject.FindGameObjectWithTag("FixedCannon").transform.GetChild(0).gameObject;
		player_pos = GameObject.Find("player_pos").transform;
	}

	private void Update()
	{
		if (totalTime > 0f && !stopTimer)
		{
			totalTime -= Time.deltaTime;
			currentTime = (int)totalTime;
		}
		if (currentTime < 11 && !timer)
		{
			if (InGameUI.instance.Clock != null)
			{
				InGameUI.instance.Clock.GetComponent<Animator>().SetTrigger("time");
			}
			InGameUI.instance.StartTextAnimation();
			GameObject gameObject = new GameObject();
			gameObject.AddComponent<AudioSource>();
			clockaudio = gameObject;
			gameObject.GetComponent<AudioSource>().clip = InGameUI.instance.Clocktick;
			gameObject.GetComponent<AudioSource>().Play();
			gameObject.GetComponent<AudioSource>().loop = true;
			gameObject.GetComponent<AudioSource>().outputAudioMixerGroup = InGameUI.instance.soundmixer;
			gameObject.GetComponent<AudioSource>().volume = 0.5f;
			gameObject.GetComponent<AudioSource>().pitch = 0.7f;
			UnityEngine.Object.Destroy(gameObject, 10f);
			timer = true;
		}
		if (currentTime <= 0 && !alarm)
		{
			InGameUI.instance.Clock.SetActive(value: false);
			InGameUI.instance.Alarm.SetActive(value: true);
			GameEvents.OnGameOver(null, null);
			InGameUI.instance.shoot_collider_obj = GameObject.Find("Shoot");
			GameObject.Find("Shoot").SetActive(value: false);
			Invoke("SniperShot", 0.25f);
			Invoke("Blood", 0.275f);
			Invoke("PlayerDead", 0.3f);
			alarm = true;
		}
	}

	private void Blood()
	{
		Object.Instantiate(InGameUI.instance.BloodEffect, PlayerHead.transform.position, PlayerHead.transform.rotation);
	}

	private void SniperShot()
	{
		soundcontrol.SniperShot.Play();
	}

	public void PlayerDead()
	{
		player_pos.transform.position = Player.transform.position;
		player_pos.transform.rotation = Player.transform.rotation;
		Player.GetComponent<Animator>().enabled = true;
		Player.GetComponent<Animator>().SetTrigger("die");
	}

	public void PlayerAlive()
	{
		Player.transform.position = player_pos.transform.position;
		Player.transform.rotation = player_pos.transform.rotation;
		Player.GetComponent<Animator>().SetTrigger("revive");
		Invoke("animatorstate_to_revive", 0.5f);
	}

	private void animatorstate_to_revive()
	{
		Player.GetComponent<Animator>().enabled = false;
	}

	public void SetStars()
	{
		isStarForShot = false;
		isStarForTime = false;
		StarsAchieved = 1;
		if (currentShot >= targetShot)
		{
			StarsAchieved++;
			isStarForShot = true;
		}
		if ((float)currentTime >= targetTime)
		{
			StarsAchieved++;
			isStarForTime = true;
		}
		if (StarsAchieved > PlayerPrefs.GetInt(SceneManager.GetActiveScene().name + "Stars"))
		{
			PlayerPrefs.SetInt(SceneManager.GetActiveScene().name + "Stars", StarsAchieved);
		}
		CoinsRecieved = StarsAchieved * 100;
		InGameUI.instance.TotalRecievedCoins = CoinsRecieved;
		PlayerPrefs.SetInt("TotalCoins", PlayerPrefs.GetInt("TotalCoins") + CoinsRecieved);
		if (MainMenu.instance != null)
		{
			Text totalCoinsText = MainMenu.instance.TotalCoinsText2;
			string text = PlayerPrefs.GetInt("TotalCoins").ToString();
			MainMenu.instance.TotalCoinsText.text = text;
			totalCoinsText.text = text;
		}
	}
}
