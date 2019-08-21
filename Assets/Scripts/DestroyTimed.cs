using UnityEngine;

public class DestroyTimed : MonoBehaviour
{
	public float timeDelay;

	private void Start()
	{
		UnityEngine.Object.Destroy(base.gameObject, timeDelay);
	}
}
