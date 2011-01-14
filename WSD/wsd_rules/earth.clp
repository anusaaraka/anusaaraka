
(defrule earth0
(declare (salience 5000))
(id-root ?id earth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pqWvI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  earth.clp 	earth0   "  ?id "  pqWvI )" crlf))
)

(defrule earth1
(declare (salience 4900))
(id-root ?id earth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pqWvI_meM_gAdZa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  earth.clp 	earth1   "  ?id "  pqWvI_meM_gAdZa_xe )" crlf))
)

;"earth","VT","1.pqWvI_meM_gAdZa_xenA"
;He earthed the electric wires near the pillar.
;
;LEVEL 
;
;
;Headword : earth
;
;Examples --
;
;1."Earth" "N"
;         1."pqWvI"
;        Earth is having oxygen && carbon-dioxide. 
;         pqWvI ke pAsa AksIjana Ora kArbana dAIAksAidZa hEM. 
;
;        2."saMsAra"/"jagawa"
;       Everyone should maintain peace on the earth. 
;       haraeka ko saMsAra me Sanwi barakarAra raKanI cAhie.
;   
;        3."mittI"/"XUla"
;       Fill a pot with the earth.
;       mittI se gamale ko Bara xo  
;
;       4."jZamIna"
;       The plane crashed on the land. 
;       havAIjahAjZa jZamIna para XadZAma se girA. 
;    
;
;  uparyukwa vAkyo ko sUkRma xqRti se xeKe wo ina saba me eka samAnawA najZara
;  AwI hEM. isako isa prakAra spaRta kiyA jA sakawA hEM.
;
;
;1.pqWvI ke pAsa AksIjana Ora kArbana dAAksAida hEM.<--pqWvI<--XarawI<--jZamIna
;
;2.haraeka ko saMsAra me Sanwi barakarAra raKanI cAhie.  <--saMsAra
;                                                 |
;                                                 |          
;                              {jazhA para saBI jIva-janwu Ora manuRya rahawe hEM}
;                                                |<--[jZamIna].           
;3.mittI se gamale ko Bara xo.   <--mittI{jo jZamIna para pAI jAwI hE}<--jZamIna.
;
;4.havAIjahAjZa jZamIna para XadZAma se girA.              <--jZamIna
;
;
;
;sUwra : jZamIna`
;
;
