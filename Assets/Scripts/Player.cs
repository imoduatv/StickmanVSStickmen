using UnityEngine;

public class Player : MonoBehaviour
{
	public GameObject Bullet;

	public Transform GunEnd;

	public float Force = 500f;

	private void Start()
	{
	}

	private void Update()
	{
		Vector3 mousePosition = UnityEngine.Input.mousePosition;
		mousePosition = Camera.main.ScreenToWorldPoint(mousePosition);
		float x = mousePosition.x;
		Vector3 position = base.transform.position;
		float x2 = x - position.x;
		float y = mousePosition.y;
		Vector3 position2 = base.transform.position;
		Vector2 v = new Vector2(x2, y - position2.y);
		base.transform.up = v;
		if (v.x > 0f)
		{
			base.transform.localScale = new Vector3(-1f, 1f, 1f);
		}
		else
		{
			base.transform.localScale = new Vector3(1f, 1f, 1f);
		}
		if (Input.GetMouseButtonDown(0))
		{
			GameObject gameObject = UnityEngine.Object.Instantiate(Bullet, GunEnd.position, base.transform.rotation);
			gameObject.GetComponent<Rigidbody2D>().AddForce(GunEnd.up * Force);
			UnityEngine.Object.Destroy(gameObject, 2f);
		}
	}
}
