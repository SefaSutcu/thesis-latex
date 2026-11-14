# Tez metni

Ege Üniversitesi FBE yüksek lisans tezi: *Az Etiketli Tıbbi Görüntülerde Temel Model Destekli Verimli Öğrenme*.

- Derleme: `latexmk` (MiKTeX/TeX Live + Perl gerekir; ayarlar `latexmkrc` içinde).
- Ana dosya `main.tex`; bölümler `chapters/`, ön bölümler `frontmatter/`, son bölümler `backmatter/` altında.
- Kaynakça `references.bib`: Zotero'daki "Tez" koleksiyonundan Better BibTeX ile otomatik dışa aktarılır, elle düzenlenmez.
- Şekiller kod reposundan (`fm-efficient-learning`) PDF olarak `figures/` altına gelir.
- Şablon: FBE `FBE_TEZ` (`mythesis.cls`, `bibtez.bst`); dış kapak Word dosyası `kapak/` altında.
- Kural: her cümle ayrı satırda; git diff okunur kalır.
