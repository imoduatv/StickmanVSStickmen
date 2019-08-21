using System.Collections.Generic;
using UnityEngine;

public class PoolManager : MonoBehaviour
{
	[Range(5f, 50f)]
	public int NoOfObjectsToBeCreated = 30;

	public List<GameObject> AllObjects;

	public GameObject Prefab;

	private int SlectedIndex;

	private int currentObjectGenerattionCount;

	public string NameToAppend;

	private GameObject selected;

	private void Awake()
	{
		Invoke("SetLaser", 0.15f);
	}

	private void SetLaser()
	{
		if (base.gameObject.name == "LaserPool")
		{
			Prefab = InGameUI.instance.Lasers[PlayerPrefs.GetInt("SelectedGun")];
		}
	}

	public GameObject GetPoolObject()
	{
		if (currentObjectGenerattionCount < NoOfObjectsToBeCreated - 1)
		{
			selected = UnityEngine.Object.Instantiate(Prefab);
			AllObjects.Add(selected);
			currentObjectGenerattionCount++;
		}
		else
		{
			selected = AllObjects[SlectedIndex];
			SlectedIndex++;
			if (SlectedIndex > AllObjects.Count - 1)
			{
				SlectedIndex = 0;
			}
		}
		if (selected != null)
		{
			selected.name = NameToAppend;
		}
		selected.SetActive(value: true);
		return selected;
	}
}
