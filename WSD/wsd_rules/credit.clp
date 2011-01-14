
(defrule credit0
(declare (salience 5000))
(id-root ?id credit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uXAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  credit.clp 	credit0   "  ?id "  uXAra )" crlf))
)

(defrule credit1
(declare (salience 4900))
(id-root ?id credit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Sreya_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  credit.clp 	credit1   "  ?id "  Sreya_xe )" crlf))
)

;"credit","VT","1.Sreya_xenA"
;We credited her for saving our jobs
;I credit you with saving his life
;--"2.viSvAsa_xilAnA"
;The Cheetah is generally credited as the world's fasted animal. 
;--"3.mAnyawA"  
;Would you credit it,if she won first prize?
;--"4.kisI_KAwe_meM_jamA_karanA"  
;Credit his account with Rs.100.  
;
;LEVEL 
;
;
;
;Headword : credit
;
;Examples --
;
;'credit' Sabxa kA sUwra banAne kA eka prayAsa
;
;--"1.viSvAsa"
;I bought it on credit.
;meM use viSvAsa para KarIxa lAI.
;--"2.prawiRTA"
;I hope he will be a credit to our institute.
;muJe ummIxa hE,ki ye hamArI saMsWA kI prawiRTA ko baDAegA.
;--"3.Sreya"
;This credit goes to rahul.
;yaha Sreya rAhula ko jAwA hEM.
;--"4.jamAXana"
;please place this sum to my credit.
;kqpayA mere jamAXana meM ye rakama dAla xIjie
;--"5.uXAra"
;The bank refused further credit to the company.
;bEMka ne kampanI ko uXAra xene se manA kara xiyA.
;--"6.sAKa"
;The company approved the credit.
;kampanI ne sAKa kI maMjUrI xe xI.
;
;yahAz hama xeKawe hE ki "credit" Sabxa kA prayoga alaga alaga saMrxaBo meM howe
;hue BI unakA eka sAmAnya arWa nikalawA hEM.yahAz para xie gae uxAharaNo kI ora hama
;XyAna se xeKe wo uname eka sAmAnyawA xiKawI hEM.
;
;isakA sUkRma arWa kuCa isa prakAra hE yaxi kisI para viSvAsa ho wo hI use gOrava
;prApwa hogA.waba hI use sAKa yA uXAra/jamA xiyA jAegA.jo ki eka krama me kuCa
;isa prakAra se judZA hE.
;
;(viSvAsa)-sAkRya-[sAKa]-gOrava-[Sreya]{yogaxAna}
;|                                     |
;|                                     | 
;[uXAra]/[jamA]---------------------------
;
;isa DAzce se yaha niRkarRa nikalawA hE ki isakA 'mUla' arWa uXAra yA 'sAKa' 
;A rahA hE. isalie isakA sUwra hogA, 
;
;sUwra : sAKa[>uXAra/jamA]
;
;
