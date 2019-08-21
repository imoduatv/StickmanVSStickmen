using UnityEngine;

public class OutPortal : MonoBehaviour
{
	public GameObject ArrowPrefab;

	public Transform NewPos;

	public GameObject InPortalObj;

	public void ShootArrow()
	{
		GameObject gameObject = UnityEngine.Object.Instantiate(ArrowPrefab, NewPos.position, base.transform.rotation);
		ArrowPrefab.name = "hey";
		gameObject.GetComponent<Rigidbody2D>().AddForce(NewPos.right * 150f, ForceMode2D.Impulse);
	}

	private void Start()
	{
		if (InGameUI.instance != null)
		{
			ArrowPrefab = InGameUI.instance.Lasers[PlayerPrefs.GetInt("SelectedGun")];
		}
	}

	private void OnTriggerEnter2D(Collider2D incoming)
	{
		if (incoming.name.Contains("Laser"))
		{
			UnityEngine.Object.Destroy(incoming.gameObject);
			if (!InPortalObj.activeSelf)
			{
				thisshoot();
			}
			else
			{
				Object.FindObjectOfType<InPortal>().AShootArrow();
			}
		}
	}

	private void thisshoot()
	{
		GameObject gameObject = UnityEngine.Object.Instantiate(ArrowPrefab, NewPos.position, base.transform.rotation);
		gameObject.GetComponent<Rigidbody2D>().AddForce(NewPos.right * 150f, ForceMode2D.Impulse);
	}
}
