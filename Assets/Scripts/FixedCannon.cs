using UnityEngine;

public class FixedCannon : MonoBehaviour
{
	public static FixedCannon instance;

	public Transform CannonDir;

	public Transform Cursor;

	public Transform FirePos;

	private PoolManager LaserPool;

	[Range(0.16f, 0.8f)]
	public float timeBetweenBirdSpawn;

	public string Poolname;

	public GameManager gameManager;

	public Vector2 AngleDirection;

	public Transform[] pos;

	public LineRenderer linerend;

	public GameObject HandDirections;

	public SoundController SoundControl;

	public GameObject Gun3d;

	public GameObject GunsParentObject;

	public GameObject PowerParticles;

	private float currentFireTime;

	private Vector3 direction;

	private Vector2 centerpt;

	private void Start()
	{
		SoundControl = UnityEngine.Object.FindObjectOfType<SoundController>();
		gameManager = UnityEngine.Object.FindObjectOfType<GameManager>();
		PoolManager[] array = UnityEngine.Object.FindObjectsOfType<PoolManager>();
		foreach (PoolManager poolManager in array)
		{
			if (poolManager.name.Contains(Poolname))
			{
				LaserPool = poolManager;
			}
		}
		GunsParentObject.transform.GetChild(PlayerPrefs.GetInt("SelectedGun") + 1).gameObject.SetActive(value: true);
		SoundControl.ShootSound.clip = SoundControl.GunSounds[PlayerPrefs.GetInt("SelectedGun")];
		instance = this;
		Invoke("OffAnim", 1.25f);
	}

	private void OffAnim()
	{
		base.transform.GetChild(1).GetComponent<Animator>().enabled = false;
	}

	private void Update()
	{
		Cursor.position = gameManager.CursorPos;
		Vector3 position = Cursor.position;
		float x = position.x;
		Vector3 position2 = CannonDir.position;
		float x2 = x - position2.x;
		Vector3 position3 = Cursor.position;
		float y = position3.y;
		Vector3 position4 = CannonDir.position;
		Vector2 a = new Vector2(x2, y - position4.y);
		CannonDir.right = -a;
		if (Time.timeSinceLevelLoad - currentFireTime > timeBetweenBirdSpawn && gameManager.ShootLaser && gameManager.currentShot > 0)
		{
			SoundControl.ShootSound.Play();
			gameManager.currentShot--;
			gameManager.ShootLaser = false;
			GameObject poolObject = LaserPool.GetPoolObject();
			if (LaserPool == null)
			{
				return;
			}
			poolObject.SetActive(value: true);
			poolObject.transform.position = FirePos.position;
			poolObject.transform.rotation = FirePos.localRotation;
			poolObject.GetComponent<Rigidbody2D>().AddForce(FirePos.right * 110f, ForceMode2D.Impulse);
			currentFireTime = Time.timeSinceLevelLoad;
		}
		HandDirections.transform.LookAt(Cursor.position + new Vector3(0f, 0f, -5f));
		Gun3d.transform.LookAt(Cursor);
		RaycastHit2D raycastHit2D = Physics2D.Raycast(linerend.GetPosition(0), a);
		if (raycastHit2D.collider != null)
		{
			linerend.SetPosition(1, raycastHit2D.point);
		}
		else
		{
			linerend.SetPosition(1, pos[1].position);
		}
	}

	private void LateUpdate()
	{
		linerend.SetPosition(0, pos[0].position);
	}

	private void OnCollisionEnter2D(Collision2D incoming)
	{
		if (incoming.collider.name.Contains("Laser") || incoming.collider.name.Contains("Stickman") || incoming.collider.name.Contains("hey"))
		{
			base.gameObject.transform.GetChild(1).GetComponent<Animator>().enabled = true;
			base.gameObject.transform.GetChild(1).GetComponent<Animator>().SetTrigger("die");
			GameEvents.OnGameOver(null, null);
			InGameUI.instance.fail_ad_bool = true;
			MonoBehaviour.print("other Collider : " + incoming.collider.name);
		}
	}
}
