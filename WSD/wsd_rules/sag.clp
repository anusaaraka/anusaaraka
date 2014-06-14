;########################################################################

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
;########################################################################`

;@@@ Added by Jagrati
;Moreover, if the mirror 'dish' is very large it tends to sag under its own weight.[gyanidhi corpus]
;इसके अलावा यदि दर्पण बहुत बड़ा होगा तो यह संभावना रहती है कि वह अपने ही वजन से किसी ओर झुक जाए।
(defrule sag0
(declare (salience 5000))
(id-root ?id sag)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-under_saMbanXI ?id ?)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id Juka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  sag.clp  	sag0   "  ?id "  Juka )" crlf))
)

;-------------------------------------- Default rules -------------------------------
;@@@ Added by Jagrati
;Their share of the vote sagged badly at the last election. [iit-bombay]
; अंतिम चुनाव में अपने हिस्से के मतदान  बुरी तरह से कम हो गये.
(defrule sag1
(declare (salience 4900))
(id-root ?id sag)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kama_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  sag.clp  	sag1   "  ?id "  kama_ho )" crlf))
)

;@@@ Added by Jagrati
(defrule sag2
(declare (salience 4800))
(id-root ?id sag)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id Jola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  sag.clp  	sag2   "  ?id "  Jola )" crlf))
)
