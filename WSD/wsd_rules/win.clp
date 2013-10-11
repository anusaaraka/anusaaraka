;##############################################################################
;#  Copyright (C) 2002-2005 Rashmi Ranjan (rashmi.ranjan810@gmail.com)
;#
;#  This program is free software; you can redistribute it and/or
;#  modify it under the terms of the GNU General Public License
;#  as published by the Free Software Foundation; either
;#  version 2 of the License, or (at your option) any later
;#  version.
;#
;#  This program is distributed in the hope that it will be useful,
;#  but WITHOUT ANY WARRANTY; without even the implied warranty of
;#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;#  GNU General Public License for more details.
;#
;#  You should have received a copy of the GNU General Public License
;#  along with this program; if not, write to the Free Software
;#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
;
;##############################################################################


;They are trying to win support for their proposals. [Oxford Advanced Learners Dict]
;ve apane praswAva ke pakRa meM samarWana prApwa karane kA prayAsa kara rahe hEM |
;वे अपने प्रस्ताव के पक्ष में समर्थन प्राप्त करने का प्रयास कर रहे हैं |
(defrule win0
(declare (salience 5000))
(id-root ?id win)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-root ?id1 support|cooperation)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  win.clp 	win0   "  ?id "  prApwa_kara)" crlf))
)

;The company has won a contract to supply books and materials to schools.[Oxford Advanced Learners Dict]
;kampanI ko skUla ke lie kiwAbe Ora sAmAna pahucAne kA TekA milA |
;कम्पनी को स्कूल के लिए किताबे और सामान पहुचाने का ठेका मिला |
;She won the admiration of many people in her battle against cancer.[Oxford Advanced Learners Dict]
;use kEMsara ke virUXa jaMga meM bahuwa sAre logo kI praSaMsA milI |
;उसे कैंसर के विरूध जंग में बहुत सारे लोगो की प्रशंसा मिली |
(defrule win1
(declare (salience 4700))
(id-root ?id win)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 contract|admiration)
(kriyA-object  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  win.clp 	win1   "  ?id "  mila)" crlf))
)

;##########################DEFAULT RULE##############################################

;Britain won five gold medals. [Oxford Advanced Learners Dict]
;britena ne pAzca sone ke paxaka jIwe |
;ब्रिटेन ने पाँच सोने के पदक जीते |
;She loves to win an argument. [Oxford Advanced Learners Dict]
;vaha bahasa jIwanA pasanxa karawI hE |
;वह बहस जीतना पसन्द करती है |
(defrule win3
(declare (salience 0))
(id-root ?id win)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jIwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  win.clp 	win3   "  ?id "  jIwa)" crlf))
)
;###########################################################################################

;They are trying to win support in parliament.
;वे संसद में सहारा प्राप्त करने के लिये प्रयास कर रहे हैं . 
;It could win without killing . 
;यह मारने के बिना जीत सका . 
;Eventually we did win the case .
;अन्त में हमने मामला जीता  . 
;Everyone likes winning an argument.[Cambridge Advanced Learners Dict]
;सबको बहस जीतना पसंद है .
;He won £3000 in the lottery. [Oxford Advanced Learners Dict]
;उसने लाटरी में £ 3000 जीता . 
