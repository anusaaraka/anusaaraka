
(defrule overrun0
(declare (salience 5000))
(id-root ?id overrun)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muzha_waka_Bara_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overrun.clp 	overrun0   "  ?id "  muzha_waka_Bara_jA )" crlf))
)

;"overrun","VI","1.muzha_waka_Bara_jAnA"
;--"2.bAhara_nikalanA"
;--"3.aXika_honA"
;
(defrule overrun1
(declare (salience 4900))
(id-root ?id overrun)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PEla_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overrun.clp 	overrun1   "  ?id "  PEla_jA )" crlf))
)

;"overrun","VT","1.PEla_jAnA"
;The place was overrun by uninvited audience.
;--"2.baDZa_jAnA"
;The seminar was overrun by ten minutes
;

;@@@ Added by Sonam Gupta MTech IT Banasthali 31-12-2013
;The house was overrun by rats. [Cambbridge]
;घर चूहों से भरा हुआ था . 
(defrule overrun2
(declare (salience 5500))
(id-root ?id overrun)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun|adjective)
(or(viSeRya-by_saMbanXI  ?id ?)(viSeRya-with_saMbanXI  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BarA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overrun.clp 	overrun2   "  ?id "  BarA_huA )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 31-12-2013
;Troops overran the city. [Cambbridge]
;दलों ने शहर को भर दिया है. 
(defrule overrun3
(declare (salience 5500))
(id-root ?id overrun)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 city)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BarA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overrun.clp 	overrun3   "  ?id "  BarA_huA )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 31-12-2013
;Sorry I'm late, but the meeting overran by 20 minutes. [Cambridge]
;क्षमा कीजिए मैं देरी से आया, परन्तु बैठक 20 मिनट तक आगे बढी . 
(defrule overrun4
(declare (salience 5500))
(id-root ?id overrun)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 meeting|conference)
(kriyA-subject  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Age_baDa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overrun.clp 	overrun4   "  ?id "  Age_baDa )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 31-12-2013
;Enemy soldiers had overrun the island. [OALD]
;शत्रु सैनिक द्वीप पर फैल गए. 
(defrule overrun5
(declare (salience 5500))
(id-root ?id overrun)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 island)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PEla_gae))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overrun.clp 	overrun5   "  ?id "  PEla_gae )" crlf))
)
