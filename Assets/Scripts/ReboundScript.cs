using UnityEngine;

public class ReboundScript : MonoBehaviour
{
	public GameObject Poolname;

	public Transform FirePos;

	private bool shoot;

	private void OnTriggerEnter2D(Collider2D incoming)
	{
		if (incoming.name.Contains("Laser"))
		{
			UnityEngine.Object.Destroy(incoming.gameObject);
			GameObject gameObject = UnityEngine.Object.Instantiate(Poolname, base.transform.position, base.transform.rotation);
		}
	}
}
