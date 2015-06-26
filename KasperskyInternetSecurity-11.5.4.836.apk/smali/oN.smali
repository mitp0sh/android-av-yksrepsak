.class public final LoN;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lou;

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 218
    invoke-static {}, LjJ;->c()Lcom/kms/KisTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/KisTheme;->getDialogThemeResId()I

    move-result v0

    invoke-direct {p0, p1, v0}, LoN;-><init>(Landroid/content/Context;I)V

    .line 219
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    new-instance v0, Lou;

    invoke-direct {v0, p1, p2}, Lou;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, LoN;->a:Lou;

    .line 227
    iput p2, p0, LoN;->b:I

    .line 228
    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, LoN;->a:Lou;

    iget-object v0, v0, Lou;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final a(I)LoN;
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, LoN;->a:Lou;

    iget-object v1, p0, LoN;->a:Lou;

    iget-object v1, v1, Lou;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lou;->d:Ljava/lang/CharSequence;

    .line 237
    return-object p0
.end method

.method public final a(IIILoO;)LoN;
    .locals 2

    .prologue
    .line 633
    iget-object v0, p0, LoN;->a:Lou;

    iget-object v1, p0, LoN;->a:Lou;

    iget-object v1, v1, Lou;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lou;->m:[Ljava/lang/CharSequence;

    .line 634
    iget-object v0, p0, LoN;->a:Lou;

    iget-object v1, p0, LoN;->a:Lou;

    iget-object v1, v1, Lou;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lou;->n:[Ljava/lang/CharSequence;

    .line 635
    iget-object v0, p0, LoN;->a:Lou;

    iput-object p4, v0, Lou;->q:LoO;

    .line 636
    iget-object v0, p0, LoN;->a:Lou;

    iput p3, v0, Lou;->B:I

    .line 637
    iget-object v0, p0, LoN;->a:Lou;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lou;->z:Z

    .line 638
    return-object p0
.end method

.method public final a(IILandroid/content/DialogInterface$OnClickListener;)LoN;
    .locals 2

    .prologue
    .line 608
    iget-object v0, p0, LoN;->a:Lou;

    iget-object v1, p0, LoN;->a:Lou;

    iget-object v1, v1, Lou;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lou;->m:[Ljava/lang/CharSequence;

    .line 609
    iget-object v0, p0, LoN;->a:Lou;

    iput-object p3, v0, Lou;->p:Landroid/content/DialogInterface$OnClickListener;

    .line 610
    iget-object v0, p0, LoN;->a:Lou;

    iput p2, v0, Lou;->B:I

    .line 611
    iget-object v0, p0, LoN;->a:Lou;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lou;->z:Z

    .line 612
    return-object p0
.end method

.method public final a(ILandroid/content/DialogInterface$OnClickListener;)LoN;
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, LoN;->a:Lou;

    iget-object v1, p0, LoN;->a:Lou;

    iget-object v1, v1, Lou;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lou;->f:Ljava/lang/CharSequence;

    .line 325
    iget-object v0, p0, LoN;->a:Lou;

    iput-object p2, v0, Lou;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 326
    return-object p0
.end method

.method public final a(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)LoN;
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, LoN;->a:Lou;

    iget-object v1, p0, LoN;->a:Lou;

    iget-object v1, v1, Lou;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lou;->m:[Ljava/lang/CharSequence;

    .line 530
    iget-object v0, p0, LoN;->a:Lou;

    iput-object p3, v0, Lou;->C:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 531
    iget-object v0, p0, LoN;->a:Lou;

    iput-object p2, v0, Lou;->x:[Z

    .line 532
    iget-object v0, p0, LoN;->a:Lou;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lou;->y:Z

    .line 533
    return-object p0
.end method

.method public final a(Landroid/view/View;)LoN;
    .locals 2

    .prologue
    .line 733
    iget-object v0, p0, LoN;->a:Lou;

    iput-object p1, v0, Lou;->r:Landroid/view/View;

    .line 734
    iget-object v0, p0, LoN;->a:Lou;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lou;->w:Z

    .line 735
    return-object p0
.end method

.method public final a(Landroid/view/View;IIII)LoN;
    .locals 2

    .prologue
    .line 762
    iget-object v0, p0, LoN;->a:Lou;

    iput-object p1, v0, Lou;->r:Landroid/view/View;

    .line 763
    iget-object v0, p0, LoN;->a:Lou;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lou;->w:Z

    .line 764
    iget-object v0, p0, LoN;->a:Lou;

    iput p2, v0, Lou;->s:I

    .line 765
    iget-object v0, p0, LoN;->a:Lou;

    iput p3, v0, Lou;->t:I

    .line 766
    iget-object v0, p0, LoN;->a:Lou;

    iput p4, v0, Lou;->u:I

    .line 767
    iget-object v0, p0, LoN;->a:Lou;

    iput p5, v0, Lou;->v:I

    .line 768
    return-object p0
.end method

.method public final a(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)LoN;
    .locals 2

    .prologue
    .line 704
    iget-object v0, p0, LoN;->a:Lou;

    iput-object p1, v0, Lou;->o:Landroid/widget/ListAdapter;

    .line 705
    iget-object v0, p0, LoN;->a:Lou;

    iput-object p3, v0, Lou;->p:Landroid/content/DialogInterface$OnClickListener;

    .line 706
    iget-object v0, p0, LoN;->a:Lou;

    const/4 v1, -0x1

    iput v1, v0, Lou;->B:I

    .line 707
    iget-object v0, p0, LoN;->a:Lou;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lou;->z:Z

    .line 708
    return-object p0
.end method

.method public final a(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)LoN;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, LoN;->a:Lou;

    iput-object p1, v0, Lou;->o:Landroid/widget/ListAdapter;

    .line 485
    iget-object v0, p0, LoN;->a:Lou;

    iput-object p2, v0, Lou;->p:Landroid/content/DialogInterface$OnClickListener;

    .line 486
    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;)LoN;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, LoN;->a:Lou;

    iput-object p1, v0, Lou;->d:Ljava/lang/CharSequence;

    .line 252
    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)LoN;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, LoN;->a:Lou;

    iput-object p1, v0, Lou;->f:Ljava/lang/CharSequence;

    .line 338
    iget-object v0, p0, LoN;->a:Lou;

    iput-object p2, v0, Lou;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 339
    return-object p0
.end method

.method public final a(Z)LoN;
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, LoN;->a:Lou;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lou;->D:Z

    .line 293
    return-object p0
.end method

.method public final a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)LoN;
    .locals 2

    .prologue
    .line 682
    iget-object v0, p0, LoN;->a:Lou;

    iput-object p1, v0, Lou;->m:[Ljava/lang/CharSequence;

    .line 683
    iget-object v0, p0, LoN;->a:Lou;

    iput-object p3, v0, Lou;->p:Landroid/content/DialogInterface$OnClickListener;

    .line 684
    iget-object v0, p0, LoN;->a:Lou;

    iput p2, v0, Lou;->B:I

    .line 685
    iget-object v0, p0, LoN;->a:Lou;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lou;->z:Z

    .line 686
    return-object p0
.end method

.method public final a([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnClickListener;)LoN;
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, LoN;->a:Lou;

    iput-object p1, v0, Lou;->m:[Ljava/lang/CharSequence;

    .line 455
    iget-object v0, p0, LoN;->a:Lou;

    iput-object p2, v0, Lou;->n:[Ljava/lang/CharSequence;

    .line 456
    iget-object v0, p0, LoN;->a:Lou;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lou;->A:Z

    .line 457
    iget-object v0, p0, LoN;->a:Lou;

    iput-object p4, v0, Lou;->p:Landroid/content/DialogInterface$OnClickListener;

    .line 458
    return-object p0
.end method

.method public final b()LoM;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 800
    new-instance v0, LoM;

    iget-object v1, p0, LoN;->a:Lou;

    iget-object v1, v1, Lou;->a:Landroid/content/Context;

    iget v2, p0, LoN;->b:I

    invoke-direct {v0, v1, v2}, LoM;-><init>(Landroid/content/Context;I)V

    .line 801
    iget-object v1, p0, LoN;->a:Lou;

    invoke-static {v0}, LoM;->a(LoM;)Lcom/kms/gui/dialog/AlertController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lou;->a(Lcom/kms/gui/dialog/AlertController;)V

    .line 802
    iget-object v1, p0, LoN;->a:Lou;

    iget-boolean v1, v1, Lou;->l:Z

    invoke-virtual {v0, v1}, LoM;->setCancelable(Z)V

    .line 803
    iget-object v1, p0, LoN;->a:Lou;

    invoke-virtual {v0, v3}, LoM;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 804
    iget-object v1, p0, LoN;->a:Lou;

    invoke-virtual {v0, v3}, LoM;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 805
    iget-object v1, p0, LoN;->a:Lou;

    .line 806
    return-object v0
.end method

.method public final b(I)LoN;
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, LoN;->a:Lou;

    iget-object v1, p0, LoN;->a:Lou;

    iget-object v1, v1, Lou;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lou;->e:Ljava/lang/CharSequence;

    .line 278
    return-object p0
.end method

.method public final b(ILandroid/content/DialogInterface$OnClickListener;)LoN;
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, LoN;->a:Lou;

    iget-object v1, p0, LoN;->a:Lou;

    iget-object v1, v1, Lou;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lou;->h:Ljava/lang/CharSequence;

    .line 351
    iget-object v0, p0, LoN;->a:Lou;

    iput-object p2, v0, Lou;->i:Landroid/content/DialogInterface$OnClickListener;

    .line 352
    return-object p0
.end method

.method public final b(Ljava/lang/CharSequence;)LoN;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, LoN;->a:Lou;

    iput-object p1, v0, Lou;->e:Ljava/lang/CharSequence;

    .line 288
    return-object p0
.end method

.method public final b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)LoN;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, LoN;->a:Lou;

    iput-object p1, v0, Lou;->h:Ljava/lang/CharSequence;

    .line 364
    iget-object v0, p0, LoN;->a:Lou;

    iput-object p2, v0, Lou;->i:Landroid/content/DialogInterface$OnClickListener;

    .line 365
    return-object p0
.end method

.method public final b(Z)LoN;
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, LoN;->a:Lou;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lou;->l:Z

    .line 401
    return-object p0
.end method

.method public final c()LoM;
    .locals 1

    .prologue
    .line 816
    invoke-virtual {p0}, LoN;->b()LoM;

    move-result-object v0

    .line 817
    invoke-virtual {v0}, LoM;->show()V

    .line 818
    return-object v0
.end method

.method public final c(I)LoN;
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, LoN;->a:Lou;

    const v1, 0x7f02007f

    iput v1, v0, Lou;->c:I

    .line 303
    return-object p0
.end method

.method public final c(ILandroid/content/DialogInterface$OnClickListener;)LoN;
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, LoN;->a:Lou;

    iget-object v1, p0, LoN;->a:Lou;

    iget-object v1, v1, Lou;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lou;->j:Ljava/lang/CharSequence;

    .line 377
    iget-object v0, p0, LoN;->a:Lou;

    iput-object p2, v0, Lou;->k:Landroid/content/DialogInterface$OnClickListener;

    .line 378
    return-object p0
.end method

.method public final c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)LoN;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, LoN;->a:Lou;

    iput-object p1, v0, Lou;->j:Ljava/lang/CharSequence;

    .line 390
    iget-object v0, p0, LoN;->a:Lou;

    iput-object p2, v0, Lou;->k:Landroid/content/DialogInterface$OnClickListener;

    .line 391
    return-object p0
.end method

.method public final d(ILandroid/content/DialogInterface$OnClickListener;)LoN;
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, LoN;->a:Lou;

    iget-object v1, p0, LoN;->a:Lou;

    iget-object v1, v1, Lou;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lou;->m:[Ljava/lang/CharSequence;

    .line 438
    iget-object v0, p0, LoN;->a:Lou;

    iput-object p2, v0, Lou;->p:Landroid/content/DialogInterface$OnClickListener;

    .line 439
    return-object p0
.end method
