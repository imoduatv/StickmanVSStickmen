using UnityEngine;

public class CannonController : MonoBehaviour
{
	public Transform CannonPosition;

	public Transform CannonDir;

	public float moveSpeed = 10f;

	public Transform Cursor;

	public Transform FirePos;

	private PoolManager LaserPool;

	[Range(0.16f, 0.8f)]
	public float timeBetweenBirdSpawn;

	public string Poolname;

	public Vector2 CannonPositionLimit;

	public GameManager gameManager;

	private float currentFireTime;

	public float MaxAngle;

	private Vector3 direction;

	private void Start()
	{
		gameManager = UnityEngine.Object.FindObjectOfType<GameManager>();
		PoolManager[] array = UnityEngine.Object.FindObjectsOfType<PoolManager>();
		foreach (PoolManager poolManager in array)
		{
			if (poolManager.name.Contains(Poolname))
			{
				LaserPool = poolManager;
			}
		}
	}

	private void Update()
	{
		if (Input.GetMouseButtonDown(0))
		{
			gameManager.ShootLaser = true;
		}
		float vertical = InputController.Vertical;
		Transform cannonPosition = CannonPosition;
		Vector3 localPosition = CannonPosition.localPosition;
		float x = localPosition.x;
		float y = vertical * 10f;
		Vector3 localPosition2 = CannonPosition.localPosition;
		cannonPosition.position = new Vector3(x, y, localPosition2.z);
		Vector3 position = base.transform.position;
		Vector3 position2 = CannonPosition.position;
		position.y = Mathf.Clamp(position2.y, CannonPositionLimit.x, CannonPositionLimit.y);
		CannonPosition.position = position;
		Vector3 a = Camera.main.ScreenToWorldPoint(UnityEngine.Input.mousePosition);
		if (a.x < (float)Screen.width && a.y < (float)Screen.height)
		{
			direction = a - CannonDir.position;
		}
		Cursor.position = Camera.main.ScreenToWorldPoint(UnityEngine.Input.mousePosition) + new Vector3(0f, 0f, 10f);
		Vector3 vector = new Vector3(Screen.width / 2, Screen.height / 2, 0f);
		Vector3 position3 = Cursor.position;
		vector.x = Mathf.Clamp(position3.x, -30f, 33f);
		Vector3 position4 = Cursor.position;
		vector.y = Mathf.Clamp(position4.y, -18f, 18f);
		Cursor.position = new Vector3(vector.x, vector.y, 0f);
		float value = Mathf.Atan2(direction.y, direction.x) * 57.29578f;
		Quaternion b = Quaternion.AngleAxis(Mathf.Clamp(value, -50f, 50f), Vector3.forward);
		CannonDir.transform.rotation = Quaternion.Slerp(base.transform.rotation, b, 10f);
		if (Time.timeSinceLevelLoad - currentFireTime > timeBetweenBirdSpawn && gameManager.ShootLaser)
		{
			gameManager.ShootLaser = false;
			GameObject poolObject = LaserPool.GetPoolObject();
			if (!(LaserPool == null))
			{
				poolObject.SetActive(value: true);
				poolObject.transform.position = FirePos.position;
				poolObject.transform.rotation = FirePos.localRotation;
				poolObject.GetComponent<Rigidbody2D>().AddForce(FirePos.right * 100f, ForceMode2D.Impulse);
				currentFireTime = Time.timeSinceLevelLoad;
			}
		}
	}
}
