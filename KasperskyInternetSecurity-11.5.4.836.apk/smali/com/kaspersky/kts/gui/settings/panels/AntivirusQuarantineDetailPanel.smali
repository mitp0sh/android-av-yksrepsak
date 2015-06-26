.class public Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;
.super Lfj;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements LmT;


# instance fields
.field private h:LmM;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/ListView;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$MenuProgressInfo;

.field private m:Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$MenuClickDialogListener;

.field private n:Z

.field private o:Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$ListClickItemListener;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/widget/LinearLayout;

.field private r:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Lfj;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    .line 52
    new-instance v0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$MenuClickDialogListener;

    invoke-direct {v0, p0, v1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$MenuClickDialogListener;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;B)V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->m:Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$MenuClickDialogListener;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->n:Z

    .line 54
    new-instance v0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$ListClickItemListener;

    invoke-direct {v0, p0, v1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$ListClickItemListener;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;B)V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->o:Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$ListClickItemListener;

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->e:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method private a(Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$MenuProgressInfo;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->l:Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$MenuProgressInfo;

    .line 135
    return-void
.end method

.method private a(Landroid/view/MenuItem;I)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 168
    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->h:LmM;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->h:LmM;

    invoke-virtual {v2}, LmM;->getCount()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 203
    :goto_0
    return v0

    .line 173
    :cond_1
    add-int/lit8 v2, p2, -0x1

    .line 174
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 177
    :pswitch_0
    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->h:LmM;

    invoke-virtual {v3, v2}, LmM;->a(I)LgD;

    move-result-object v2

    .line 178
    if-eqz v2, :cond_2

    .line 179
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->h:LmM;

    iget-object v2, v2, LgD;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, LmM;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_2
    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 186
    :pswitch_1
    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->h:LmM;

    invoke-virtual {v3, v2}, LmM;->a(I)LgD;

    move-result-object v2

    .line 187
    if-eqz v2, :cond_3

    .line 188
    new-instance v3, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$MenuProgressInfo;

    invoke-direct {v3, p0, v1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$MenuProgressInfo;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;B)V

    .line 189
    iget-object v1, v2, LgD;->d:Ljava/lang/String;

    iput-object v1, v3, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$MenuProgressInfo;->a:Ljava/lang/String;

    .line 190
    iget-object v1, v2, LgD;->a:Ljava/lang/String;

    iput-object v1, v3, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$MenuProgressInfo;->b:Ljava/lang/String;

    .line 191
    invoke-direct {p0, v3}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->a(Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$MenuProgressInfo;)V

    .line 192
    invoke-virtual {p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->d(I)V

    goto :goto_0

    .line 194
    :cond_3
    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 199
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->d(I)V

    goto :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0232
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;)LmM;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->h:LmM;

    return-object v0
.end method

.method static synthetic c(Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;)Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$MenuProgressInfo;
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->d()Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$MenuProgressInfo;

    move-result-object v0

    return-object v0
.end method

.method private d()Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$MenuProgressInfo;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->l:Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$MenuProgressInfo;

    return-object v0
.end method

.method static synthetic d(Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic e(Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->e:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic f(Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->j:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public final a(I)Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    packed-switch p1, :pswitch_data_0

    .line 114
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 91
    :pswitch_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->m:Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$MenuClickDialogListener;

    invoke-virtual {v0, v3}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$MenuClickDialogListener;->a(Z)V

    .line 92
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->d()Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$MenuProgressInfo;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->c:Landroid/content/Context;

    const v2, 0x7f070320

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$MenuProgressInfo;->b:Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 95
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f07031f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070321

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->m:Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$MenuClickDialogListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070322

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->m:Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$MenuClickDialogListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 103
    :pswitch_1
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->m:Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$MenuClickDialogListener;

    invoke-virtual {v0, v4}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$MenuClickDialogListener;->a(Z)V

    .line 104
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070323

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070324

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070325

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->m:Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$MenuClickDialogListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070326

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->m:Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$MenuClickDialogListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/kms/antivirus/gui/QuarantineOperation;Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 288
    if-nez p2, :cond_0

    .line 292
    sget-object v0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$2;->a:[I

    invoke-virtual {p1}, Lcom/kms/antivirus/gui/QuarantineOperation;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 305
    :goto_0
    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$1;

    invoke-direct {v3, p0, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$1;-><init>(Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;I)V

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 313
    return-void

    .line 294
    :pswitch_0
    const v0, 0x7f07031c

    .line 295
    goto :goto_0

    .line 297
    :pswitch_1
    const v0, 0x7f07031d

    .line 298
    goto :goto_0

    .line 300
    :pswitch_2
    const v0, 0x7f07031e

    .line 301
    goto :goto_0

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 220
    if-nez p1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->h:LmM;

    invoke-virtual {v0}, LmM;->b()V

    .line 222
    invoke-static {}, Lcom/google/android/apps/analytics/easytracking/GA;->c()V

    .line 226
    :goto_0
    invoke-super {p0, p1}, Lfj;->a(Z)V

    .line 227
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->h:LmM;

    invoke-virtual {v0}, LmM;->a()V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 149
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 150
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, p1, v0}, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->a(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 280
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->p:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 283
    return-void
.end method

.method public final c()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 317
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->h:LmM;

    invoke-virtual {v0}, LmM;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 318
    :goto_0
    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 321
    return-void

    :cond_0
    move v0, v1

    .line 317
    goto :goto_0

    :cond_1
    move v0, v2

    .line 318
    goto :goto_1
.end method

.method public final d(Z)V
    .locals 1

    .prologue
    .line 155
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->n:Z

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->h:LmM;

    invoke-virtual {v0}, LmM;->notifyDataSetChanged()V

    .line 158
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->n:Z

    .line 159
    invoke-super {p0, p1}, Lfj;->d(Z)V

    .line 160
    return-void
.end method

.method protected final e()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 66
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f03008c

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->i:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->i:Landroid/view/View;

    const v1, 0x7f0b0127

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->j:Landroid/widget/ListView;

    .line 69
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->i:Landroid/view/View;

    const v1, 0x7f0b0183

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->q:Landroid/widget/LinearLayout;

    .line 70
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->i:Landroid/view/View;

    const v1, 0x7f0b0128

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->k:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->i:Landroid/view/View;

    const v1, 0x7f0b0184

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->p:Landroid/widget/LinearLayout;

    .line 73
    new-instance v0, LfE;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->c:Landroid/content/Context;

    const v2, 0x7f0702f9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->c:Landroid/content/Context;

    const v3, 0x7f0702fa

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, LfE;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 75
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, v4, v4, v4}, LfI;->a(Landroid/view/LayoutInflater;Landroid/view/View;LfK;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->j:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 78
    new-instance v0, LmM;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->b:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->o:Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$ListClickItemListener;

    iget-object v4, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->o:Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel$ListClickItemListener;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, LmM;-><init>(Landroid/app/Activity;Landroid/view/LayoutInflater;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;LmT;)V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->h:LmM;

    .line 79
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->h:LmM;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->j:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 81
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->e:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->j:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    .line 82
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->i:Landroid/view/View;

    return-object v0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 214
    invoke-super {p0}, Lfj;->g()V

    .line 215
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->h:LmM;

    invoke-virtual {v0}, LmM;->b()V

    .line 216
    return-void
.end method

.method public final g(I)Z
    .locals 1

    .prologue
    .line 121
    packed-switch p1, :pswitch_data_0

    .line 126
    invoke-super {p0, p1}, Lfj;->g(I)Z

    move-result v0

    :goto_0
    return v0

    .line 124
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 231
    const v0, 0x7f060040

    return v0
.end method

.method protected final i(I)V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x5

    return v0
.end method

.method public final m()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->h:LmM;

    invoke-virtual {v0}, LmM;->a()V

    .line 209
    invoke-super {p0}, Lfj;->m()V

    .line 210
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 144
    const v1, 0x7f100003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 145
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 276
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3

    .prologue
    .line 257
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 258
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 260
    if-nez p2, :cond_1

    .line 261
    iget-object v2, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->h:LmM;

    invoke-virtual {v2, v0, v1}, LmM;->a(II)V

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->h:LmM;

    invoke-virtual {v1}, LmM;->getCount()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/kaspersky/kts/gui/settings/panels/AntivirusQuarantineDetailPanel;->j:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_0
.end method
