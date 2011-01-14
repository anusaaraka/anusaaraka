
(defrule double0
(declare (salience 5000))
(id-root ?id double)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xoharA_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " double.clp	double0  "  ?id "  " ?id1 "  xoharA_ho_jA  )" crlf))
)

;The audience doubled up with laughter.
;SrowA hazsawe-hazsawe lota-pota ho gae
(defrule double1
(declare (salience 4900))
(id-root ?id double)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 hissA_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " double.clp	double1  "  ?id "  " ?id1 "  hissA_le  )" crlf))
)

;There are only two bedrooms so we'll have to double up.
;sone ke kamare sirPa xo hI hEM isalie hameM inhe hI(sone ke lie ) bAztanA hogA
(defrule double2
(declare (salience 4800))
(id-root ?id double)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xogunA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  double.clp 	double2   "  ?id "  xogunA )" crlf))
)

(defrule double3
(declare (salience 4700))
(id-root ?id double)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xoharA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  double.clp 	double3   "  ?id "  xoharA )" crlf))
)

(defrule double4
(declare (salience 4600))
(id-root ?id double)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xuganA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  double.clp 	double4   "  ?id "  xuganA_kara )" crlf))
)

(defrule double5
(declare (salience 4500))
(id-root ?id double)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xuganA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  double.clp 	double5   "  ?id "  xuganA_ho )" crlf))
)

;"double","V","1.xuganA karanA[honA]"
;The prices of the immoveble properties have almost doubled in that duration
;--"2.xoharA_ho_jAnA"
;They doubled up laughing at my joke
;Double the paper twice && you get four equal sheets of it
;The sofa doubles as a bed at night
;
;
;LEVEL 
;Headword : double
;
;Example --
;
;""double","Adj","1.xogunA"
;He got double the amount invested in his latest business venture.
;apane piCale vyAvasAyika xAzva meM usane jiwanA lagAyA WA usase xogune pEse mile. 
;
;--"2.xoharA"
;It has a double advantage of being cheap && effective
;isake saswA Ora pRaBAvakArI hone ke xohare lABa hEM.
;
;"double","Det","1.xuganI"
;Ravi draws double the amount of salary as her
;ravi ko usase xugunI mAwrA meM vewana milawA hE.
;
;"double","Adv","1.xoharA"
;Because of the injury in her eyes she saw double
;usakI AzKa meM cota lagI hone kara kAraNa usako xoharA xiKa rahA WA.
;
;"double","N","1.xugunI_mAwrA_meM"
;He ran at the double when ordered by his boss to complete the task allotted to h
;im
;usake aXikArI ne jaba use xiyA huA kAma Kawama karane kI AjFA xI wo vaha xugunI gawi se xOdZA.
;
;--"2.prawirUpa"
;Rita is her mother's double.
;rIwA apanI mAz kA prawirUpa hE.
;
;"double","V","1.xuganA karanA[honA]"
;The prices of the immovable properties have almost doubled in that duration
;usa xOrAna meM acala sampawwi kA mUlya lagaBaga xugunA ho gayA hE.  
;
;--"2.xoharA_ho_jAnA"
;They doubled up laughing at my joke
;vaha mere cutakule para hazsawe hazsawe xohare ho gaye.
;
;Double the paper twice && you get four equal sheets of it
;kAgajZa ko xo bAra xoharA karo Ora wumhAre pAsa cAra barAbara kI paraweM ho jAwI hEM
;
;--"3.BI bana jAwA hE"
;The sofa doubles as a bed at night
;rAwa ko soPA biswara BI bana jAwA hE.
;
;
;sUwra : xoharA-xugunA-prawirUpa
