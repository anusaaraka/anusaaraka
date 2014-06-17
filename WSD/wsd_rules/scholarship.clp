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
;###################################################################

;@@@ Added by jagriti(11.1.2014)
;A work of great scholarship.
;महान विद्वत्ता का कार्य . 
(defrule scholarship0
(declare (salience 5000))
(id-root ?id scholarship)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI ?id1 ?id)
(id-root ?id1 work)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vixvawwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scholarship.clp 	scholarship0   "  ?id "  vixvawwA )" crlf))
)

;....Default rule....
;@@@ Added by jagriti(11.1.2014)
;Moreover, the amount of the scholarship was not enough to maintain a student for three years in England.
;यही नहीं छात्रवृत्ति की राशि भी तीन वर्षों तक इंग्लैंड में विद्यीर्थी के भरण-पोषण के लिए अपर्याप्त थी।
;It was proposed that those awarded the scholarship in Science would have to spend three years in England under distinguished teachers of international reputation.
;प्रस्ताव यह था कि विज्ञान में जिन लोगों को छात्रवृत्तियां दी जायेंगी, उन्हें इंग्लैंड में अंतर्राष्ट्रीय ख्याति के विशिष्ट शिक्षकों की देखरेख में तीन वर्ष व्यतीत करने होंगे।
(defrule scholarship1
(declare (salience 100))
(id-root ?id scholarship)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CAwravQwwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scholarship.clp 	scholarship1   "  ?id "  CAwravQwwi )" crlf))
)
