using UnityEngine;

public class Destruct : MonoBehaviour
{
	private void Start()
	{
	}

	private void Update()
	{
	}

	public void DestroyCurrentPanel()
	{
		UnityEngine.Object.Destroy(base.gameObject);
	}
}
