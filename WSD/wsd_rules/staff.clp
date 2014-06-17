;##############################################################################
;#  Copyright (C) 2013-2014 Jagrati Singh (singh.jagriti5@gmail.com)
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
;########################################################################
;@@@ Added by jagriti(3.4.2014)
; While motivating people Balveer Singh said that if any official or member of staff asked for a bribe for any work, a complaint could be sent to the vigilance department.
;लोगों को प्रेरित करते हुए कहा कि यदि कोई अधिकारी या कर्मचारी किसी भी काम के लिए रिश्वत की मांग करता है तो उसकी शिकायत विजिलेंस विभाग से की जा सकती है। 
(defrule staff0
(declare (salience 5000))
(id-root ?id staff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI ?id1 ?id)
(id-root ?id1 member|person|official)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viBAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  staff.clp 	staff0   "  ?id "  viBAga )" crlf))
)
;@@@ Added by jagriti(5.4.2014)
;This pension could be the best staff for him.[rajpal]
;यह निवृत्ति वेतन उसके लिये सर्वोत्तम सहारा हो सकता था . 
(defrule staff3
(declare (salience 5000))
(id-root ?id staff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 pension)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  staff.clp 	staff3   "  ?id "  sahArA )" crlf))
)
;...Default Rule...
;@@@ Added by jagriti(3.4.2014)
;We need more staff in our office. [oald]
;हमें हमारे दफ्तर में अधिक कर्मचारियों की जरूरत होती है . 
(defrule staff1
(declare (salience 100))
(id-root ?id staff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id karmacArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  staff.clp 	staff1   "  ?id "  karmacArI )" crlf))
)
;@@@ Added by jagriti(3.4.2014)
;The school is staffed entirely by graduates. [iit-bombay]
;विद्यालय स्नातक तक सम्पूर्णतया भरा हुआ है . 
(defrule staff2
(declare (salience 100))
(id-root ?id staff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BarA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  staff.clp 	staff2   "  ?id "  BarA_ho )" crlf))
)

