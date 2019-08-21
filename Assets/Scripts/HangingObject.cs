using UnityEngine;

public class HangingObject : MonoBehaviour
{
	private LineRenderer strings;

	private void Start()
	{
		strings = GetComponent<LineRenderer>();
	}

	private void Update()
	{
		strings.SetPosition(0, base.transform.position);
		strings.SetPosition(1, base.transform.parent.transform.position);
	}
}
