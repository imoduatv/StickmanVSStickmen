using UnityEngine;

public class Bomb : MonoBehaviour
{
	public ParentBomb parents;

	private void OnTriggerEnter2D(Collider2D incoming)
	{
		UnityEngine.Debug.Log(incoming.name);
		if (incoming.name.Contains("Stickman"))
		{
			parents.StickMan = incoming.gameObject;
		}
		if (incoming.name.Contains("Box"))
		{
			parents.Boxes = incoming.gameObject;
		}
	}

	private void OnTriggerStay2Ds(Collider2D incoming)
	{
		UnityEngine.Debug.Log(incoming.name);
		if (incoming.name.Contains("Stickman"))
		{
			parents.StickMan = incoming.gameObject;
		}
	}

	private void OnTriggerExit2D(Collider2D incoming)
	{
		if (incoming.name.Contains("Stickman"))
		{
			parents.StickMan = null;
		}
		if (incoming.name.Contains("Box"))
		{
			parents.Boxes = null;
		}
	}
}
