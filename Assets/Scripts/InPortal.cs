using UnityEngine;
using UnityEngine.SceneManagement;

public class InPortal : MonoBehaviour
{
	public GameObject Arrowprefab;

	public Transform NewPos;

	public GameObject OutPortalObj;

	private void Start()
	{
		Arrowprefab = InGameUI.instance.Lasers[PlayerPrefs.GetInt("SelectedGun")];
	}

	private void OnTriggerEnter2D(Collider2D incoming)
	{
		if (incoming.name.Contains("Laser"))
		{
			UnityEngine.Object.Destroy(incoming.gameObject);
			if (!OutPortalObj.activeSelf)
			{
				Thisshoot();
			}
			else
			{
				OutPortalObj.GetComponent<OutPortal>().ShootArrow();
			}
			if (SceneManager.GetActiveScene().buildIndex - 2 == 28 || SceneManager.GetActiveScene().buildIndex - 2 == 34)
			{
				UnityEngine.Object.Destroy(InGameUI.instance.help);
			}
		}
	}

	public void AShootArrow()
	{
		GameObject gameObject = UnityEngine.Object.Instantiate(Arrowprefab, NewPos.position, base.transform.rotation);
		gameObject.GetComponent<Rigidbody2D>().AddForce(NewPos.right * 150f, ForceMode2D.Impulse);
	}

	public void Thisshoot()
	{
		GameObject gameObject = UnityEngine.Object.Instantiate(Arrowprefab, NewPos.position, base.transform.rotation);
		gameObject.GetComponent<Rigidbody2D>().AddForce(NewPos.right * 150f, ForceMode2D.Impulse);
	}
}
