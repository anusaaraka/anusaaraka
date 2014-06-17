;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)18-Feb-2014
;A vision of a brave new Britain.[oald]
;एक आशाओं भरे नये ब्रिटेन का एक सपना.
(defrule brave2
(declare (salience 5000))
(id-root ?id brave)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ? ?id1)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-word ?id1 new)

=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ASAoM_Bare))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brave.clp 	brave2   "  ?id "  ASAoM_Bare )" crlf))
)

;******************************DEFAULT RULES***********************************

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)18-Feb-2014
;America, the land of the free and the home of the brave.[oald]
;अमरीका, स्वतन्त्र लोगों की भूमि और साहसी व्यक्तियों का घर . 
(defrule brave3
(declare (salience 0))
(id-root ?id brave)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAhasI_vyakwI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brave.clp 	brave3   "  ?id "  sAhasI_vyakwI )" crlf))
)


(defrule brave0
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id brave)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAhasI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brave.clp 	brave0   "  ?id "  sAhasI )" crlf))
)

;Changed for compatibility with sabdasutra
;default_sense && from_list(category,adj|adj_comp|adj_super)	bahAxura	0
;"brave","Adj","1.bahAxura"
;--"2.sAhasI"
;Familiarity with danger makes a brave man braver but less daring
;Girls decked out in brave new dresses
;
(defrule brave1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id brave)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAmanA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brave.clp 	brave1   "  ?id "  sAmanA_kara )" crlf))
)

;"brave","VT","1.sAmanA_karanA/lalakAranA"
;Brave the natural elements
;She braved the elements
;

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_brave2
(declare (salience 5000))
(id-root ?id brave)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ? ?id1)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-word ?id1 new)

=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ASAoM_Bare))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " brave.clp   sub_samA_brave2   "   ?id " ASAoM_Bare )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_brave2
(declare (salience 5000))
(id-root ?id brave)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ? ?id1)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-word ?id1 new)

=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ASAoM_Bare))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " brave.clp   obj_samA_brave2   "   ?id " ASAoM_Bare )" crlf))
)
