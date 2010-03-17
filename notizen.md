
Allgemeine Beobachtungen
------------------------

1.  Kommen nicht ohne den Begriff der projezierbaren Prädikate aus.
   
    Grund: Vereinheitlichung sollte rein formal definiert werden
    (TODO: zu begründen) und Sprachanpassungen nicht verbieten (siehe
    [Kitcher1989@TODO]). Sie sind damit offen für trivialisierung,
    indem entsprechende Prädikate konstruiert werden (TODO:genauer,
    klarer).

Spezifische VT
--------------

1.  Kitcher [Kitcher1989] [Klarner2003@ cap. 2.3]
   
    Am besten ausgearbeitet. Siehe eigenes Kapitel.

2.  Friedman [Klarner2003@ cap. 2.2]
   
    Problem von Salmon [Klarner2003@TODO] schwerwiegend. Ev. lässt sich
    das grundsätzliche Program jedoch retten:
   
    A. logischer Atomismus definieren, d.h. kleinste Aussageneinheit
    definieren, d.h. logische Formeln messbar machen (d.h. Probleme
    von K-atomar nach Friedman beheben).

    B. Reduktion dieser Messbarkeit auf empirische Ädaquatheit
    verhindern durch Gesetzesbegriff (d.h. nicht kleinste Aussagen
    sondern kleinste Gesetze zum messen verwenden)
   
    C. Grösste Vereinheitlichung = kleinste Gesetzesmenge aus welcher
    sämtliche Gesetze folgen
   
    Anwendung auf KT: kleinste KT-artigen-Gesetzmenge, aus welcher
    sämtliche KT-artigen Gesetze folgen?
   
   
3.  Schurz und Lambert (erwähnt in [Gijsbers2007]) [Schurz1999]
   
    Fügen eine KT explizit in ihrer VT ein nach [Gijsbers2007], sind
    also für mein Ansatz nicht verwendbar. TODO: direkte Ref
    finden/überprüfen, was passiert wenn die KT einfach weggelassen
    wird?


Kausaltheorien (KT) TODO
========================

1. Regularitätstheorien
2. kontrafaktische Theorien
3. ...

Kitcher nach [Kitcher1989]
==========================

Nach Kitcher könnte eine empirische KT aus einer VT folgen, indem
Ursachen mit erklärenden Ereignissen gleichgesetzt werden (S.430)
(zu Kausalität/Empirismus: S.460).

Geht Kitcher davon aus das sein Begriff der Erklärung in jedem Fall
empirisch ist? Oder ist das eine weitere Bedingung die Klärner an K
und E(K) stellt? (Spielt die verwendete Sprache L da auch eine Rolle?)

These
-----

Eine solche KT muss  die der Minimalen Theorien sein
(unter den Annahmen die Minimale Theorien selbst über die Welt macht
und unter Auschliessung gewisser entarteter Fälle)

Argumentskizze
--------------

1. Eine solche KT muss eine Regularitätstheorie sein, da sie
empirisch ist und mit einer VT als Grundlage Kausalität global
(d.h. anhand von Typen) definiert. 

2. Nach Kitcher sind Disjunktionen von projezierbaren Prädikaten
(im allg.?) keine projezierbaren Prädikate (S.483 2.Ab., S.487, S.493
1.Ab., gibt noch eine klarere Stelle, TODO:wo?)

3. (aus 1.) Ein Argumentschemata kann nicht mehr als eine
vollständige Ursache enthalten. Ansonsten benutzt man entweder ein
nicht projezierbares Prädikat, welches die Ursachen zusammenfasst, oder
das Argumentschema enthält "idle clauses" (S.484 2.Ab)

4. Ein Argumentschemata muss eine vollständige Ursache enthalten,
da ansonsten das Explanandum nicht mehr deduktiv folgt. (Da spielt
wohl K.5 eine Rolle, TODO:referenzen).

5. Das im Argumentschemata verwendete projezierbare Prädikat muss
minimal sein, gleiche Argumentation wie K.7.3.1, irrelevante
Faktoren. D.h. das verwendete projezierbare Prädikat ist eine minimal
hinreichende Bedingung.

6. Die Anzahl der Argumentschemata zu einem gewissen Ereignisstyp
muss minimal sein (Bed C1 S.478, skiziert S.434) ohne Ereignisse
unerklärt zu lassen. D.h. alle Argumentschemata zusammen bilden eine
minimal notwendige Bedingung.

7. Ketten werden bevorzugt, da insgesamt weniger Ursachen angegeben
werden müssen, d.h. Kitcher kann das minimal notwendige Disjunktiv
zählen => Ketten besser.

Probleme/Lücken/Todos in der Argumentskizze
-------------------------------------------

1.  Das ein Argumentschemata zum erklären von Ereignissen in erster
    Linie (TODO:was heisst das genau) auf ein anderes Ereigniss bezug
    nehmen muss, geht bereits aus dem Programm von Kitcher
    hervor. Sind nach Kitcher (und nach mir?) besser vereinheitlichte
    Erklärungen von Ereignissen, welche nicht auf andere Ereignisse
    bezug nehmen, ausgeschlossen? Im Allg. sicher nicht (siehe
    entartete Fälle). Könnte ein Argumentschemata mehr enthalten als
    ein hinreichendes Ereigniss, was von den Minimalen Theorien nicht
    erfasst wird?

    Kurz: Einschränkung auf Argumentschemata, welche von hinreichenden
    Ereignissen auf das Explanandum schliessen, für meine
    Argumentskizze nötig.

2.  Unterscheidung direkte/indirekte Verursachung. Kitcher beschreibt
    hierarchische Argumentschemata (d.h. spezifische Argumentschemata
    welche wiederum Instanzen von allgemeineren Argumentschemata sind)
    (TODO Ref finden). Ev. auch Meta-Argumentschemata?
    D.h. Argumentschemata welche auf (Instanzen von?) anderen
    Argumentschemata bezug nehmen. Damit könnte man zeigen, dass sich
    indirekte Verursachung auch unter Kitcher auf direkte Verursachung
    reduzieren lässt. Noch zu zeigen: dass dieser Schritt nach
    Kitchers Kriterien der Vereinhetlichung sinnvoll ist.

Entartete Fälle
---------------

1.  Konstante Kette: $a_1 \ra a_2 \ra a_3 \ra a_4 \ra a_5 \ldots$

    Minimale Theorie: $A \Ra A$, erklärt $a_2,a_3\ldots$

    Besser $\forall i \exists a_i$ erklärt $a_1,a_2,a_3\ldots$

2.  Periodische Kette: $a_1 \ra b_2 \ra a_3 \ra b_4 ...$

    Minimale Theorie: $A \Ra B$, $B \Ra A$, erklärt alles bis auf
    $a_1$

    Besser $\forall i (i \mod{2} \equiv 1 \ra \exists a_i)$, $\forall i
    (i \mod{2} \equiv 0 \ra \exists b_i)$ erklärt alles.

Dieser Fall ist schlimmer als zuerst angenommen. Bsp Zwei-Körpersystem
klassische Physik. Benutzen von gesamten Weltzuständen als Typen =>
genau eine Ursache für jede Wirkung (physikalische Tatsache TODO:
überprüfen, klassisch? QT?) => mathematische Beschreibung gewinnt.

3. Weitere?

Texte gegen das Program
=======================

TODO: [Maki2001]
----------------

[Gijsbers2007]
--------------
   
Argument nur gegen Kitcher und Schurz/Lambert => grosse Lücke zur
Konklusion gegen all Vereinheitlichung

Zusammenhang mit entarteter Fall 1, kommen mehrere Ursachen in Frage
sollte sich Gijsbers Argumentschemata als Gegenbeispiel entkräften
lassen (Falsch, siehe Punkt 2).

Gijsbers scheint sich in erster Linie auf [Kitcher1981] zu
beziehen. [Kitcher1989] ist viel weniger anfällig auf Gijsbers Kritik
(TODO:sind die Punkte auch in [Kitcher1981] und Gijsbers ignoriert
sie?)

1.  *Problem of Spurious Unification*

    Dieses Problem wird in [Kitcher1989] durch die Forderung gelöst,
    dass alle verwendeten Prädikate projezierbar sein müssen. Diese
    Lösung ist richtig, da ansonsten alle formalen Betrachtungen von
    wissenschaftlichen Theorien trivialisierbar sind. Insbesondere ist
    also $p \in C(A)$ [Gijsbers2007@S.483] nicht projezierbar und
    Gijsbers Konstruktion kein zulässiges Argumentpattern nach
    Kitcher.

2.  *Asymmetry Problem*

    Sehr interessant ist Gijsbers Aussage, dass Kitcher von einer
    idealen Situation, in welcher alle Information vorhanden ist,
    ausgeht [Gijsbers2007@S.490]. Wie geschrieben ist dies
    falsch. Kitcher verlangt in [Kitcher1989@TODO] nur, dass eine
    Instanz von einem Argumentpattern relativ zu $K$ akzeptierbar
    ist (TODO: überprüfe [Kitcher1981@S.519], widerspricht dem nach
    [Gijsbers2007@S.494]). Demnach genügt "origin and development" um
    den "Pole" *erklärbar* zu machen, selbst wenn wir nicht genug
    wissen, um eine spezifische Instanz von "origin and development"
    als die korrekte auszuzeichen. 

    Trotzdem besteht Gijsbers Argument, wenn man [Kitcher1989@K.8.3]
    berücksichtigt. Demnach sind korrekte Erklärungen solche, welche
    bestehen "in the ideal long run when the principles of rational
    modification are followed". *origin and development* als Erklärung
    des "Poles" zu akzeptieren, bedeutet anzunehmen, dass zumindest
    eine Instanz bestand haben wird in der Zukunft. Wir gehen also
    unter anderem davon aus, dass weitere Informationen über die
    Vergangenheit vom "Pole" *origin and development* niemals ganz
    ausschliessen.

    So gesehen bleibt [Gijsbers2007@S.491, Ab. 2] bestehen. Wir wissen
    zwar nicht genügend von der Zukunft, um eine spezifische *end and
    regression* Instanz auszuwählen, aber das ist auch nicht nötig,
    solange zumindest eine bestand haben wird. Zudem scheint *end and
    regression* "in the ideal long run [...]" genauso wie *origin and
    development* zu nur einer möglichen Erklärung vom Pole zu führen,
    gegeben die fundamentalen Gesetze der Physik sind symmetrisch in
    der Zeit.

3.  *Lawhood*
 
    Nicht besonders wichtig in meinem Kontext. Für das Problem der
    Asymmetry und Kausalität ist Kitchers Definition von "lawlike" und
    ob diese funktioniert irrelevant.
   

Texte für das Program
=====================

1. TODO: [Strevens2004]




