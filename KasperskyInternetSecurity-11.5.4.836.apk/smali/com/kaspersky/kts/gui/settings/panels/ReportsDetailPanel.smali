.class public Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;
.super Lfj;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final h:[I


# instance fields
.field private i:Ljava/util/Vector;

.field private j:I

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/Button;

.field private m:[Ljava/lang/CharSequence;

.field private n:Landroid/view/View;

.field private o:Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;

.field private final p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->h:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x34
        0x10
        0x4
        0x20
    .end array-data
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lfj;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->j:I

    .line 62
    invoke-static {}, Lqq;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->p:Z

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->j:I

    return v0
.end method

.method static synthetic a(Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;I)I
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->j:I

    return p1
.end method

.method static synthetic a(Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;Ljava/util/Vector;)Ljava/util/Vector;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->i:Ljava/util/Vector;

    return-object p1
.end method

.method static synthetic b(Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;I)I
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->k(I)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;)[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->m:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic c(Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->k:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d(Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->e:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic d()[I
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->h:[I

    return-object v0
.end method

.method static synthetic e(Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->i:Ljava/util/Vector;

    return-object v0
.end method

.method private f()I
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->p:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a0019

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0a0030

    goto :goto_0
.end method

.method static synthetic f(Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->b:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic g(Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h(Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->e:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic i(Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->e:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic j(Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->e:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method private k(I)I
    .locals 2

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->p:Z

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->h:[I

    aget v0, v0, p1

    .line 107
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    sget-object v0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->h:[I

    aget v0, v0, p1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->h:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    goto :goto_0
.end method

.method private y()I
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->p:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a001a

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0a0031

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Landroid/app/Dialog;
    .locals 5

    .prologue
    const v3, 0x7f07028e

    const/4 v0, 0x0

    .line 113
    packed-switch p1, :pswitch_data_0

    .line 155
    :goto_0
    return-object v0

    .line 115
    :pswitch_0
    new-instance v1, LoN;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, LoN;-><init>(Landroid/content/Context;)V

    const v2, 0x7f07028d

    invoke-virtual {v1, v2}, LoN;->a(I)LoN;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, LoN;->b(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->f()I

    move-result v1

    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->y()I

    move-result v2

    iget v3, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->j:I

    new-instance v4, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$1;

    invoke-direct {v4, p0}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$1;-><init>(Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;)V

    invoke-virtual {v0, v1, v2, v3, v4}, LoN;->a(IIILoO;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto :goto_0

    .line 140
    :pswitch_1
    new-instance v1, LoN;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, LoN;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070290

    invoke-virtual {v1, v2}, LoN;->a(I)LoN;

    move-result-object v1

    const v2, 0x7f070292

    invoke-virtual {v1, v2}, LoN;->b(I)LoN;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, LoN;->b(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    const v1, 0x7f070291

    new-instance v2, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$2;

    invoke-direct {v2, p0}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$2;-><init>(Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;)V

    invoke-virtual {v0, v1, v2}, LoN;->a(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final b()V
    .locals 1

    .prologue
    .line 159
    invoke-static {}, Lcom/kms/kmsshared/reports/Reports;->removeAll()V

    .line 160
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 161
    invoke-virtual {p0}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->c()V

    .line 162
    return-void
.end method

.method protected final c()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->o:Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;

    invoke-virtual {v0}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;->a()V

    .line 180
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->o:Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;

    invoke-virtual {v0}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;->notifyDataSetChanged()V

    .line 181
    return-void
.end method

.method protected final e()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 70
    iget v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->j:I

    invoke-direct {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->k(I)I

    move-result v0

    invoke-static {v0}, Lcom/kms/kmsshared/reports/Reports;->getFilteredEventsInVector(I)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->i:Ljava/util/Vector;

    .line 72
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030081

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->n:Landroid/view/View;

    .line 74
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->n:Landroid/view/View;

    const v1, 0x7f0b0127

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 76
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f030088

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 78
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->f()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->m:[Ljava/lang/CharSequence;

    .line 79
    const v1, 0x7f0b0176

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->k:Landroid/widget/Button;

    .line 80
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->k:Landroid/widget/Button;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->m:[Ljava/lang/CharSequence;

    iget v4, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->j:I

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->k:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v1, 0x7f0b0177

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->l:Landroid/widget/Button;

    .line 84
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->l:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 88
    new-instance v1, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;

    invoke-direct {v1, p0}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;-><init>(Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;)V

    iput-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->o:Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;

    .line 89
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->o:Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel$ReportsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    .line 92
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->n:Landroid/view/View;

    return-object v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 400
    const v0, 0x7f06007f

    return v0
.end method

.method protected final i(I)V
    .locals 0

    .prologue
    .line 407
    return-void
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 411
    const/4 v0, -0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->k:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 167
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->d(I)V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->l:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 170
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/ReportsDetailPanel;->d(I)V

    goto :goto_0

    .line 173
    :cond_2
    invoke-super {p0, p1}, Lfj;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method
