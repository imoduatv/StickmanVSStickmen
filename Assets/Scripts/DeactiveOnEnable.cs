using UnityEngine;

public class DeactiveOnEnable : MonoBehaviour
{
	public float Timetodeactive = 1f;

	private float t;

	private void Update()
	{
		if (t > Timetodeactive)
		{
			base.gameObject.SetActive(value: false);
		}
	}
}
