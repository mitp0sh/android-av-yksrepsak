.class public abstract Lcom/kms/gui/KMSCommonContactsActivity;
.super Lcom/kms/gui/KMSBaseListActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private b:Ljava/util/Vector;

.field private c:Landroid/view/LayoutInflater;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Lnr;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseListActivity;-><init>()V

    .line 29
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/kms/gui/KMSCommonContactsActivity;->b:Ljava/util/Vector;

    .line 35
    new-instance v0, Lnr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnr;-><init>(Lcom/kms/gui/KMSCommonContactsActivity;B)V

    iput-object v0, p0, Lcom/kms/gui/KMSCommonContactsActivity;->h:Lnr;

    .line 176
    return-void
.end method

.method public static synthetic a(Lcom/kms/gui/KMSCommonContactsActivity;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/kms/gui/KMSCommonContactsActivity;->c:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public static synthetic b(Lcom/kms/gui/KMSCommonContactsActivity;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/kms/gui/KMSCommonContactsActivity;->b:Ljava/util/Vector;

    return-object v0
.end method

.method public static synthetic c(Lcom/kms/gui/KMSCommonContactsActivity;)Lnr;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/kms/gui/KMSCommonContactsActivity;->h:Lnr;

    return-object v0
.end method

.method private n()V
    .locals 6

    .prologue
    const v5, 0x7f0b0073

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 158
    const v0, 0x7f0b0103

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSCommonContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 159
    invoke-virtual {p0, v5}, Lcom/kms/gui/KMSCommonContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 160
    if-eqz v3, :cond_0

    .line 162
    iget-object v0, p0, Lcom/kms/gui/KMSCommonContactsActivity;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/kms/gui/KMSCommonContactsActivity;->onContentChanged()V

    .line 165
    if-eqz v4, :cond_1

    .line 167
    invoke-virtual {p0, v5}, Lcom/kms/gui/KMSCommonContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/kms/gui/KMSCommonContactsActivity;->b:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/kms/gui/KMSCommonContactsActivity;->j()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 169
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 162
    goto :goto_0

    :cond_3
    move v2, v1

    .line 167
    goto :goto_1
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public final a(IIII)V
    .locals 0

    .prologue
    .line 127
    iput p1, p0, Lcom/kms/gui/KMSCommonContactsActivity;->d:I

    .line 128
    iput p2, p0, Lcom/kms/gui/KMSCommonContactsActivity;->e:I

    .line 129
    iput p3, p0, Lcom/kms/gui/KMSCommonContactsActivity;->f:I

    .line 130
    iput p4, p0, Lcom/kms/gui/KMSCommonContactsActivity;->g:I

    .line 131
    return-void
.end method

.method protected final a(J)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/kms/gui/KMSCommonContactsActivity;->b:Ljava/util/Vector;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 153
    invoke-direct {p0}, Lcom/kms/gui/KMSCommonContactsActivity;->n()V

    .line 154
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 289
    return-void
.end method

.method public abstract b()V
.end method

.method public abstract b(I)Z
.end method

.method public abstract c()Z
.end method

.method protected abstract d()Ljava/util/Vector;
.end method

.method protected e()I
    .locals 1

    .prologue
    .line 56
    const v0, 0x7f03001c

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 173
    const v0, 0x7f03001d

    return v0
.end method

.method protected g()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method protected j()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method protected k()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method protected final l()V
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/kms/gui/KMSCommonContactsActivity;->d()Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/gui/KMSCommonContactsActivity;->b:Ljava/util/Vector;

    .line 147
    invoke-direct {p0}, Lcom/kms/gui/KMSCommonContactsActivity;->n()V

    .line 148
    return-void
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/kms/gui/KMSCommonContactsActivity;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kms/gui/KMSCommonContactsActivity;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/kms/gui/KMSCommonContactsActivity;->e()I

    move-result v0

    const v1, 0x7f0b0067

    invoke-virtual {p0, v0, v1}, Lcom/kms/gui/KMSCommonContactsActivity;->a(II)V

    .line 68
    invoke-virtual {p0}, Lcom/kms/gui/KMSCommonContactsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kms/gui/KMSCommonContactsActivity;->m()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/kms/gui/KMSCommonContactsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 70
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSCommonContactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/kms/gui/KMSCommonContactsActivity;->c:Landroid/view/LayoutInflater;

    .line 71
    new-instance v0, Lnp;

    invoke-direct {v0, p0, v3}, Lnp;-><init>(Lcom/kms/gui/KMSCommonContactsActivity;B)V

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSCommonContactsActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    const v0, 0x7f0b00a0

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSCommonContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 73
    iget v1, p0, Lcom/kms/gui/KMSCommonContactsActivity;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 75
    const v0, 0x7f0b0043

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSCommonContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 76
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/kms/gui/KMSCommonContactsActivity;->m()Z

    move-result v1

    .line 79
    if-eqz v1, :cond_1

    .line 81
    iget v2, p0, Lcom/kms/gui/KMSCommonContactsActivity;->f:I

    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 87
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 88
    iget v1, p0, Lcom/kms/gui/KMSCommonContactsActivity;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 89
    iget-object v1, p0, Lcom/kms/gui/KMSCommonContactsActivity;->h:Lnr;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/kms/gui/KMSCommonContactsActivity;->g()V

    .line 95
    return-void

    .line 85
    :cond_1
    iget v2, p0, Lcom/kms/gui/KMSCommonContactsActivity;->g:I

    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 311
    if-nez p2, :cond_0

    .line 313
    const v0, 0x7f0b0033

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 314
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 316
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 319
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 295
    const v0, 0x7f0b0033

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 296
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 298
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 301
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 306
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const v2, 0x7f0b006f

    .line 103
    invoke-super {p0}, Lcom/kms/gui/KMSBaseListActivity;->onResume()V

    .line 104
    invoke-virtual {p0, v2}, Lcom/kms/gui/KMSCommonContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 105
    invoke-virtual {p0}, Lcom/kms/gui/KMSCommonContactsActivity;->k()Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    if-eqz v0, :cond_0

    .line 107
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0, v2}, Lcom/kms/gui/KMSCommonContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
