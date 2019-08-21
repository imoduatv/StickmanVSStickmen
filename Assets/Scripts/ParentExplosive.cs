using UnityEngine;

public class ParentExplosive : MonoBehaviour
{
	public GameObject Stickman;

	public GameObject Barrels;

	public void Explode()
	{
		if (Stickman != null)
		{
			UnityEngine.Object.Destroy(Stickman.gameObject);
		}
		else
		{
			UnityEngine.Object.Destroy(base.gameObject);
		}
		if (Barrels != null)
		{
			UnityEngine.Object.Destroy(Barrels.gameObject);
			UnityEngine.Debug.Log("+++++++++++++++++++++++++++++");
		}
		else
		{
			UnityEngine.Object.Destroy(base.gameObject);
		}
	}
}
