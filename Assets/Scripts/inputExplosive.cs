using UnityEngine;

public class inputExplosive : MonoBehaviour
{
	public ParentExplosive parents;

	private void OnTriggerEnter2D(Collider2D incoming)
	{
		UnityEngine.Debug.Log(incoming.name);
		if (incoming.name.Contains("Stickman"))
		{
			parents.Stickman = incoming.gameObject;
		}
		if (incoming.name.Contains("Explosive"))
		{
			parents.Barrels = incoming.gameObject;
		}
	}

	private void OnTriggerExit2D(Collider2D incoming)
	{
		if (incoming.name.Contains("Stickman"))
		{
			parents.Stickman = null;
		}
		if (incoming.name.Contains("Explosive"))
		{
			parents.Barrels = null;
		}
	}
}
