
(defrule paint0
(declare (salience 5000))
(id-root ?id paint)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id painting )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kalAkqwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  paint.clp  	paint0   "  ?id "  kalAkqwi )" crlf))
)

;"painting","N","1.kalAkqwi{ciwra}"
;--"2.raMgaciwra"
;Raja Ravi Varma's paintings are very famous. 
;rAjA ravI vArmA ke raMgaciwra bahuwa prasixXa hEM.
;--"3.ciwrakArI"
;She is doing her post graduation in painting.
;vaha ciwrakArI meM snAwkowwara kara rahI hE.
;
(defrule paint1
(declare (salience 4900))
(id-root ?id paint)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raMgalepa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  paint.clp 	paint1   "  ?id "  raMgalepa )" crlf))
)

;"paint","N","1.raMgalepa"
;Give the walls two coats of paint.
;xIvAroM ko raMga ke xo lepa lagAo.
;
(defrule paint2
(declare (salience 4800))
(id-root ?id paint)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id razga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  paint.clp 	paint2   "  ?id "  razga )" crlf))
)

;"paint","V","1.raMga_lagAnA[honA]"
;They could not paint the ceiling since it was too high.
;ve BIwarI_Cawa ko raMga lagA nahIM pAe kyoM ki vaha UzcI WI. 
;Their dining room was painted pale blue.
;unake BojanAlaya ko halakA nIlA raMgA huA WA.
;--"2.ciwrakArI_karanA"
;This amateur artist paints well.  
;yaha avyavasAyI ciwrakAra acCI waraha ciwrakArI karawA hE.
;

(defrule paint3
(declare (salience 5000))
(id-root ?id paint)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id painted)
;(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa =(+ ?id 1) ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id razga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  paint.clp      paint3   "  ?id "  razga )" crlf))
)

