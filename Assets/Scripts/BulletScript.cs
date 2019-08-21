using UnityEngine;
using UnityEngine.SceneManagement;

public class BulletScript : MonoBehaviour
{
	public string Poolname;

	public PoolManager LaserPool;

	public float deactivateTime = 3f;

	private GameManager gameManager;

	[SerializeField]
	private PhysicsMaterial2D thimat;

	public PoolManager BloodPool;

	public string BloodPoolname;

	public PoolManager MudPool;

	public string MudPoolname;

	public PoolManager WoodPool;

	public string WoodPoolName;

	private SoundController soundcontrol;

	private float currenttime;

	private void OnEnable()
	{
		soundcontrol = UnityEngine.Object.FindObjectOfType<SoundController>();
		gameManager = UnityEngine.Object.FindObjectOfType<GameManager>();
		PoolManager[] array = UnityEngine.Object.FindObjectsOfType<PoolManager>();
		foreach (PoolManager poolManager in array)
		{
			if (poolManager.name.Contains(Poolname))
			{
				LaserPool = poolManager;
			}
		}
		PoolManager[] array2 = UnityEngine.Object.FindObjectsOfType<PoolManager>();
		foreach (PoolManager poolManager2 in array2)
		{
			if (poolManager2.name.Contains(BloodPoolname))
			{
				BloodPool = poolManager2;
			}
		}
		PoolManager[] array3 = UnityEngine.Object.FindObjectsOfType<PoolManager>();
		foreach (PoolManager poolManager3 in array3)
		{
			if (poolManager3.name.Contains(MudPoolname))
			{
				MudPool = poolManager3;
			}
		}
		PoolManager[] array4 = UnityEngine.Object.FindObjectsOfType<PoolManager>();
		foreach (PoolManager poolManager4 in array4)
		{
			if (poolManager4.name.Contains(WoodPoolName))
			{
				WoodPool = poolManager4;
			}
		}
	}

	private void OnDisable()
	{
		if (gameManager.StickManCount > 0 && gameManager.currentShot <= 0 && !GameManager.instance.isBombLevel)
		{
			GameEvents.OnGameOver(null, null);
		}
		if (gameManager.StickManCount <= 0 && gameManager.currentShot >= 0 && !GameManager.instance.isRescueLevel)
		{
			GameEvents.OnGameComplete(null, null);
		}
	}

	private void OnCollisionEnter2D(Collision2D incoming)
	{
		if (incoming.collider.name.Contains("Shatter"))
		{
			UnityEngine.Debug.Log(incoming.collider.name);
			base.gameObject.SetActive(value: false);
		}
		ContactPoint2D contactPoint2D = incoming.contacts[0];
		if (incoming.collider.tag.Contains("Mud"))
		{
			soundcontrol.GroundHit.Play();
			base.gameObject.SetActive(value: false);
			GameObject poolObject = MudPool.GetPoolObject();
			if (LaserPool == null)
			{
				return;
			}
			poolObject.SetActive(value: true);
			poolObject.transform.position = contactPoint2D.point;
			if (SceneManager.GetActiveScene().buildIndex - 2 == 24 && gameManager.HasPower)
			{
				UnityEngine.Object.Destroy(InGameUI.instance.help);
			}
		}
		if (incoming.collider.name.Contains("MudBlock") && gameManager.HasPower)
		{
			base.gameObject.SetActive(value: false);
			UnityEngine.Object.Destroy(incoming.collider.gameObject);
			gameManager.HasPower = false;
			FixedCannon.instance.PowerParticles.SetActive(value: false);
			GameObject poolObject2 = MudPool.GetPoolObject();
			if (LaserPool == null)
			{
				return;
			}
			poolObject2.SetActive(value: true);
			poolObject2.transform.position = contactPoint2D.point;
			soundcontrol.GroundHit.Play();
		}
		if (incoming.collider.name.Contains("Power"))
		{
			base.gameObject.SetActive(value: false);
			UnityEngine.Object.Destroy(incoming.collider.gameObject);
			gameManager.HasPower = true;
			FixedCannon.instance.PowerParticles.SetActive(value: true);
			if (SceneManager.GetActiveScene().buildIndex - 2 == 24 && InGameUI.instance.help != null)
			{
				InGameUI.instance.help.transform.GetChild(6).gameObject.SetActive(value: false);
				InGameUI.instance.help.transform.GetChild(7).gameObject.SetActive(value: true);
				GameManager.instance.shootareadefault.SetActive(value: false);
				GameManager.instance.shootarea1.SetActive(value: true);
			}
		}
		if (incoming.collider.tag.Contains("Rope"))
		{
			incoming.gameObject.SetActive(value: false);
			base.gameObject.SetActive(value: false);
			GameObject poolObject3 = LaserPool.GetPoolObject();
			if (LaserPool == null)
			{
				return;
			}
			poolObject3.SetActive(value: true);
			poolObject3.transform.position = contactPoint2D.point;
		}
		if (incoming.collider.name.Contains("Steel"))
		{
			soundcontrol.MetalhitSound.Play();
			base.gameObject.SetActive(value: false);
			GameObject poolObject4 = LaserPool.GetPoolObject();
			if (LaserPool == null)
			{
				return;
			}
			poolObject4.SetActive(value: true);
			poolObject4.transform.position = contactPoint2D.point;
		}
		if (incoming.collider.tag.Contains("Steel"))
		{
			soundcontrol.MetalhitSound.Play();
		}
		if (incoming.collider.name.Contains("Explosive"))
		{
			soundcontrol.ExplosionSound.Play();
			base.gameObject.SetActive(value: false);
			incoming.collider.transform.parent.GetComponent<Explosive>().Explode();
		}
		if (incoming.collider.tag.Contains("FixedCannon") || incoming.collider.tag.Contains("Player"))
		{
			base.gameObject.SetActive(value: false);
			soundcontrol.StickmanhitSound.Play();
			GameEvents.OnGameOver(null, null);
			InGameUI.instance.fail_ad_bool = true;
		}
		if (incoming.collider.tag.Contains("Enemy"))
		{
			soundcontrol.StickmanhitSound.Play();
			base.gameObject.SetActive(value: false);
			UnityEngine.Object.Destroy(incoming.gameObject);
			UnityEngine.Object.Destroy(incoming.transform.parent.parent.gameObject, 3f);
			incoming.transform.parent.parent.gameObject.GetComponent<CharacteMove>().walkableCharacter = false;
			incoming.transform.parent.gameObject.GetComponent<Animator>().SetTrigger("dead");
			GameObject poolObject5 = BloodPool.GetPoolObject();
			if (LaserPool == null)
			{
				return;
			}
			poolObject5.SetActive(value: true);
			poolObject5.transform.position = contactPoint2D.point;
			gameManager.StickManCount--;
			if (gameManager.StickManCount <= 0 && !GameManager.instance.isRescueLevel)
			{
				GameEvents.OnGameComplete(null, null);
			}
			if (gameManager.StickManCount <= 0 && GameManager.instance.isRescueLevel)
			{
				GameEvents.OnGameComplete(null, null);
				GameManager.instance.isRescueLevel = false;
				GameManager.instance.Princess.transform.GetChild(0).gameObject.SetActive(value: false);
				GameManager.instance.Princess.transform.GetChild(1).gameObject.SetActive(value: true);
			}
		}
		if (incoming.collider.tag.Contains("Bouncy"))
		{
			GetComponent<CircleCollider2D>().sharedMaterial = thimat;
		}
		if (incoming.collider.tag.Contains("Wood"))
		{
			soundcontrol.WoodBrokeSound.Play();
			base.gameObject.SetActive(value: false);
			UnityEngine.Object.Destroy(incoming.gameObject);
			GameObject poolObject6 = WoodPool.GetPoolObject();
			if (LaserPool == null)
			{
				return;
			}
			poolObject6.SetActive(value: true);
			poolObject6.transform.position = contactPoint2D.point;
			if (SceneManager.GetActiveScene().buildIndex - 2 == 27 || SceneManager.GetActiveScene().buildIndex - 2 == 9)
			{
				UnityEngine.Object.Destroy(InGameUI.instance.help);
			}
			if (SceneManager.GetActiveScene().buildIndex - 2 == 18)
			{
				InGameUI.instance.Hint.transform.GetChild(0).GetChild(1).gameObject.SetActive(value: false);
			}
		}
		if (incoming.collider.tag.Contains("Cage"))
		{
			soundcontrol.WoodBrokeSound.Play();
			base.gameObject.SetActive(value: false);
			UnityEngine.Object.Destroy(incoming.gameObject);
			GameObject poolObject7 = WoodPool.GetPoolObject();
			if (LaserPool == null)
			{
				return;
			}
			poolObject7.SetActive(value: true);
			poolObject7.transform.position = contactPoint2D.point;
			if (gameManager.StickManCount <= 0)
			{
				GameEvents.OnGameComplete(null, null);
			}
			GameManager.instance.isRescueLevel = false;
			GameManager.instance.Princess.transform.GetChild(0).gameObject.SetActive(value: false);
			GameManager.instance.Princess.transform.GetChild(1).gameObject.SetActive(value: true);
			InGameUI.instance.lvl20RescueText.SetActive(value: false);
		}
		if (incoming.collider.name.Contains("OpenDoor"))
		{
			base.gameObject.SetActive(value: false);
			incoming.collider.GetComponent<OpenDoors>().OpenDoor = true;
		}
		if (incoming.collider.name.Contains("Bomb"))
		{
			incoming.collider.GetComponent<ParentBomb>().starttime = true;
		}
		if (incoming.collider.name.Contains("Cutter"))
		{
			incoming.collider.GetComponent<Cutter>().Charge = true;
		}
		if (incoming.collider.name.Contains("BShooter"))
		{
			base.gameObject.SetActive(value: false);
			incoming.collider.GetComponent<Bomber>().shoot = true;
			if (SceneManager.GetActiveScene().buildIndex - 2 == 6)
			{
				UnityEngine.Object.Destroy(InGameUI.instance.help);
				MonoBehaviour.print("Destroy Help!");
			}
		}
	}

	private void Update()
	{
		currenttime += Time.deltaTime;
		if (currenttime > deactivateTime)
		{
			base.gameObject.SetActive(value: false);
		}
	}
}
