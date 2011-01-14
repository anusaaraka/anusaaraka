
(defrule access0
(declare (salience 5000))
(id-root ?id access)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahuzca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  access.clp 	access0   "  ?id "  pahuzca )" crlf))
)

(defrule access1
(declare (salience 4900))
(id-root ?id access)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahuzca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  access.clp 	access1   "  ?id "  pahuzca )" crlf))
)

;"access","V","1.pahuzcanA"
;Ram accessed many different files to find the correct information.
;
;LEVEL 
;Headword : accsess
;
;Examples --
;
;"access","N","1.praveSa{mArga}" <--pahuzca
;We have a new access to the library.
;hamAre liye puswakAlaya jAne kA eka nayA praveSa{mArga} hE.
;--"2.pahuzca"
;He got access to the file.
;misila usake hAWa pahuzca gaI.
;
;"access","V","1.pahuzcanA"
;He accessed two different files to update the information.    
;THe ruins old ruins can be accessed through the fields. 
;
;'access' kA bIja arWa 'pahuzcanA' prawIwa howA hE. kahIM pahuzcane kA eka 'praveSa mArga'ho sakawA hE jisake xvArA hokara vahAz pahuzcA jAe. awaH 'pahuzca' ke sAWa 'praveSa{mArga}'kA arWa BI 'access' meM samA gayA. apane Apa meM 'access' kisI sWala para 'upAgamana' hE.
;isaprakAra isakA sUwra hogA -  
;
;sUwra : upAgamana[pahuzca/praveSa{mArga}]
;
