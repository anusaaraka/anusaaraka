;Modified by sheetal(05-03-10)
;There was a problem , but we solved it .
(defrule solve0
(declare (salience 5000))
(id-root ?id solve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hala_kara))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  solve.clp    solve0   "  ?id "  hala_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  solve.clp     solve0   "  ?id "  ko )" crlf))
)

;"solve","V","1.hala_kara"
(defrule solve1
(declare (salience 4900))
(id-root ?id solve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kisI_praSna_ko_hala_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  solve.clp 	solve1   "  ?id "  kisI_praSna_ko_hala_kara )" crlf))
)

;"solve","VT","1.kisI_praSna_ko_hala_karanA"
;solving a differential equation is very difficult.
;--"2.hala_DUMDZanA"
;Problem of Kashmir should be solved by the government.
;
;LEVEL 
;Headword : solve
;
;Examples :
;
;"solve","VT","1.hala karanA"
;Solving a differential equation is very difficult.
;diPareMSiyala ikveSana ko hala karanA bahuwa muSkila hE. 
;--"2.hala DUMDZanA"
;Problem of Kashmir should be solved by the government.
;kaSmIra kI samasyA kA sarakAra ko hala DUzDanA cAhiye.
;
;apane Apa meM 'solve' kA arWa samAXAna-nikAlanA yA hala-karanA TIka lagawA hE.
;kinwu 'solution' ke saMxarBa meM xeKane para isameM 'Gulane' kA arWa milawA hE.
;jisase isa Sabxa ke arWa kA eka nayA pakRa xiKawA hE. kisI BI samasyA ko
;, cAheM vaha gaNiwa kI ho yA xEnika jIvana kI, 'solve' karane meM prakriyA kyA howI hE?samasyA eka guwWI hE jo kasI huI hE Ora usake eka eka wanwu ko DIlA kara, alaga alaga
;kara ke usa guwWI ko sulaJAyA jAwA hE. awaH eka waraha kA 'viGatana kiyA' jAwA hE, kasI 
;gAzToM ko DIlA kiyA jAwA hE. isI prakriyA kA pariNAma 'Gola' howA hE. awaH viGatana hI se hala karanA kA arWa AwA hE.
;
;awaH 
;
;sUwra : viGatana[>DIlA_karanA>hala_karanA]
