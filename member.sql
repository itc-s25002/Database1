USE RPG_DB;
SELECT 名前 AS キャラ名, 職業.名称 AS 職業, 武器.名称 AS 武器, 盾.名称 AS 盾, アーマー.名称 AS 防具, メンバー.攻撃力, メンバー.防御力
FROM メンバー
LEFT JOIN 装備
	ON メンバー.ID = 装備.メンバーID
LEFT JOIN 武器
	ON 装備.武器ID = 武器.ID
LEFT JOIN 防具 AS 盾
	ON 装備.盾ID = 盾.ID
LEFT JOIN 防具 AS アーマー
	ON 装備.防具ID = アーマー.ID
JOIN 職業
	ON メンバー.職業ID = 職業.ID;
