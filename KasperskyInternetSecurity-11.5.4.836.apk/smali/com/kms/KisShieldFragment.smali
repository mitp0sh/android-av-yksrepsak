.class public final Lcom/kms/KisShieldFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private final b:Lkp;

.field private c:Lcom/kms/KisShieldFragment$FragmentMode;

.field private d:Landroid/view/View;

.field private e:Lcom/kms/KisShieldView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/kms/KisShieldFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kms/KisShieldFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 54
    new-instance v0, Lkp;

    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v1

    invoke-direct {v0, v1}, Lkp;-><init>(Lrx;)V

    iput-object v0, p0, Lcom/kms/KisShieldFragment;->b:Lkp;

    .line 57
    sget-object v0, Lcom/kms/KisShieldFragment$FragmentMode;->Static:Lcom/kms/KisShieldFragment$FragmentMode;

    iput-object v0, p0, Lcom/kms/KisShieldFragment;->c:Lcom/kms/KisShieldFragment$FragmentMode;

    .line 270
    return-void
.end method

.method public static synthetic a(Lcom/kms/KisShieldFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/kms/KisShieldFragment;->d:Landroid/view/View;

    return-object v0
.end method

.method private static a(Lcom/kms/issues/IssueType;)Lcom/kms/KisShieldView$ShieldState;
    .locals 3

    .prologue
    .line 212
    sget-object v0, LjV;->c:[I

    invoke-virtual {p0}, Lcom/kms/issues/IssueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 220
    sget-object v0, Lcom/kms/KisShieldFragment;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Shield state is not defined for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Info is returned."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    sget-object v0, Lcom/kms/KisShieldView$ShieldState;->Info:Lcom/kms/KisShieldView$ShieldState;

    :goto_0
    return-object v0

    .line 214
    :pswitch_0
    sget-object v0, Lcom/kms/KisShieldView$ShieldState;->Info:Lcom/kms/KisShieldView$ShieldState;

    goto :goto_0

    .line 216
    :pswitch_1
    sget-object v0, Lcom/kms/KisShieldView$ShieldState;->Warning:Lcom/kms/KisShieldView$ShieldState;

    goto :goto_0

    .line 218
    :pswitch_2
    sget-object v0, Lcom/kms/KisShieldView$ShieldState;->Error:Lcom/kms/KisShieldView$ShieldState;

    goto :goto_0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a()V
    .locals 2

    .prologue
    .line 207
    invoke-static {}, LjJ;->f()LpA;

    move-result-object v0

    invoke-interface {v0}, LpA;->d()Lcom/kms/issues/IssueType;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/kms/KisShieldFragment;->e:Lcom/kms/KisShieldView;

    invoke-static {v0}, Lcom/kms/KisShieldFragment;->a(Lcom/kms/issues/IssueType;)Lcom/kms/KisShieldView$ShieldState;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kms/KisShieldView;->setShieldState(Lcom/kms/KisShieldView$ShieldState;)V

    .line 209
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 81
    if-eqz p1, :cond_0

    .line 82
    const-string v0, "mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    .line 84
    invoke-static {v0}, Lcom/kms/KisShieldFragment$FragmentMode;->valueOf(Ljava/lang/String;)Lcom/kms/KisShieldFragment$FragmentMode;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/KisShieldFragment;->c:Lcom/kms/KisShieldFragment$FragmentMode;

    .line 87
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/kms/KisShieldFragment;Lmn;Z)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kms/KisShieldFragment;->a(Lmn;Z)V

    return-void
.end method

.method public static synthetic a(Lcom/kms/KisShieldFragment;Lmo;Z)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kms/KisShieldFragment;->a(Lmo;Z)V

    return-void
.end method

.method private a(Lmn;Z)V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/kms/KisShieldFragment;->c:Lcom/kms/KisShieldFragment$FragmentMode;

    sget-object v1, Lcom/kms/KisShieldFragment$FragmentMode;->ScanProgress:Lcom/kms/KisShieldFragment$FragmentMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/kms/KisShieldFragment;->c:Lcom/kms/KisShieldFragment$FragmentMode;

    sget-object v1, Lcom/kms/KisShieldFragment$FragmentMode;->Static:Lcom/kms/KisShieldFragment$FragmentMode;

    if-ne v0, v1, :cond_1

    .line 188
    :cond_0
    sget-object v0, LjV;->b:[I

    invoke-virtual {p1}, Lmn;->e()Lcom/kms/antivirus/AntivirusStateType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kms/antivirus/AntivirusStateType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 204
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 190
    :pswitch_1
    sget-object v0, Lcom/kms/KisShieldFragment$FragmentMode;->ScanProgress:Lcom/kms/KisShieldFragment$FragmentMode;

    iput-object v0, p0, Lcom/kms/KisShieldFragment;->c:Lcom/kms/KisShieldFragment$FragmentMode;

    .line 191
    iget-object v1, p0, Lcom/kms/KisShieldFragment;->e:Lcom/kms/KisShieldView;

    invoke-virtual {p1}, Lmn;->l()F

    move-result v2

    if-nez p2, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/kms/KisShieldView;->setProgress(FZ)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 197
    :pswitch_2
    sget-object v0, Lcom/kms/KisShieldFragment$FragmentMode;->Static:Lcom/kms/KisShieldFragment$FragmentMode;

    iput-object v0, p0, Lcom/kms/KisShieldFragment;->c:Lcom/kms/KisShieldFragment$FragmentMode;

    .line 198
    if-nez p2, :cond_1

    .line 199
    iget-object v0, p0, Lcom/kms/KisShieldFragment;->e:Lcom/kms/KisShieldView;

    invoke-virtual {v0}, Lcom/kms/KisShieldView;->b()V

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lmo;Z)V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/kms/KisShieldFragment;->c:Lcom/kms/KisShieldFragment$FragmentMode;

    sget-object v1, Lcom/kms/KisShieldFragment$FragmentMode;->UpdateProgress:Lcom/kms/KisShieldFragment$FragmentMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/kms/KisShieldFragment;->c:Lcom/kms/KisShieldFragment$FragmentMode;

    sget-object v1, Lcom/kms/KisShieldFragment$FragmentMode;->Static:Lcom/kms/KisShieldFragment$FragmentMode;

    if-ne v0, v1, :cond_1

    .line 168
    :cond_0
    sget-object v0, LjV;->a:[I

    invoke-virtual {p1}, Lmo;->c()Lcom/kms/antivirus/AntivirusUpdateBasesStateType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kms/antivirus/AntivirusUpdateBasesStateType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 184
    :cond_1
    :goto_0
    return-void

    .line 170
    :pswitch_0
    invoke-virtual {p1}, Lmo;->e()Lcom/kms/antivirus/AntivirusUpdateReason;

    move-result-object v0

    .line 171
    sget-object v1, Lcom/kms/antivirus/AntivirusUpdateReason;->OnDemand:Lcom/kms/antivirus/AntivirusUpdateReason;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/kms/antivirus/AntivirusUpdateReason;->Scheduled:Lcom/kms/antivirus/AntivirusUpdateReason;

    if-ne v0, v1, :cond_1

    .line 172
    :cond_2
    sget-object v0, Lcom/kms/KisShieldFragment$FragmentMode;->UpdateProgress:Lcom/kms/KisShieldFragment$FragmentMode;

    iput-object v0, p0, Lcom/kms/KisShieldFragment;->c:Lcom/kms/KisShieldFragment$FragmentMode;

    .line 173
    iget-object v1, p0, Lcom/kms/KisShieldFragment;->e:Lcom/kms/KisShieldView;

    invoke-virtual {p1}, Lmo;->d()I

    move-result v0

    int-to-float v2, v0

    if-nez p2, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/kms/KisShieldView;->setProgress(FZ)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 177
    :pswitch_1
    sget-object v0, Lcom/kms/KisShieldFragment$FragmentMode;->Static:Lcom/kms/KisShieldFragment$FragmentMode;

    iput-object v0, p0, Lcom/kms/KisShieldFragment;->c:Lcom/kms/KisShieldFragment$FragmentMode;

    .line 178
    if-nez p2, :cond_1

    .line 179
    iget-object v0, p0, Lcom/kms/KisShieldFragment;->e:Lcom/kms/KisShieldView;

    invoke-virtual {v0}, Lcom/kms/KisShieldView;->b()V

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic b(Lcom/kms/KisShieldFragment;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/kms/KisShieldFragment;->a()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .prologue
    .line 145
    if-eqz p1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/kms/KisShieldFragment;->d:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 148
    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 72
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    iget-object v0, p0, Lcom/kms/KisShieldFragment;->b:Lkp;

    const-class v1, Lme;

    new-instance v2, LjW;

    invoke-direct {v2, p0, v3}, LjW;-><init>(Lcom/kms/KisShieldFragment;B)V

    invoke-static {p0, v2}, LrC;->a(Landroid/support/v4/app/Fragment;Lrz;)LrC;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lkp;->a(Ljava/lang/Class;Lrz;)V

    .line 75
    iget-object v0, p0, Lcom/kms/KisShieldFragment;->b:Lkp;

    const-class v1, Lpu;

    new-instance v2, LjX;

    invoke-direct {v2, p0, v3}, LjX;-><init>(Lcom/kms/KisShieldFragment;B)V

    invoke-static {p0, v2}, LrC;->a(Landroid/support/v4/app/Fragment;Lrz;)LrC;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lkp;->a(Ljava/lang/Class;Lrz;)V

    .line 77
    invoke-direct {p0, p1}, Lcom/kms/KisShieldFragment;->a(Landroid/os/Bundle;)V

    .line 78
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const v4, 0x3da3d70a    # 0.08f

    .line 91
    const v0, 0x7f03004e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 93
    invoke-virtual {p0}, Lcom/kms/KisShieldFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, LbI;->a(Landroid/app/Activity;)Lcom/kaspersky/components/views/ScreenOrientation;

    move-result-object v2

    .line 95
    const v0, 0x7f0b00e3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kms/KisShieldFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v4}, LbI;->b(Landroid/app/Activity;F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 98
    const v0, 0x7f0b00e6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 100
    invoke-virtual {v2}, Lcom/kaspersky/components/views/ScreenOrientation;->isVertical()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    invoke-static {}, Lkh;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/kms/KisShieldFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v4}, LbI;->b(Landroid/app/Activity;F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 103
    invoke-virtual {p0}, Lcom/kms/KisShieldFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x3ee147ae    # 0.44f

    invoke-static {v2, v3}, LbI;->a(Landroid/app/Activity;F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 117
    :goto_0
    return-object v1

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/kms/KisShieldFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x3d4ccccd    # 0.05f

    invoke-static {v2, v3}, LbI;->b(Landroid/app/Activity;F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 106
    invoke-virtual {p0}, Lcom/kms/KisShieldFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x3ed1eb85    # 0.41f

    invoke-static {v2, v3}, LbI;->a(Landroid/app/Activity;F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/kms/KisShieldFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, LbI;->b(Landroid/app/Activity;F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 110
    invoke-static {}, Lkh;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    invoke-virtual {p0}, Lcom/kms/KisShieldFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x3e99999a    # 0.3f

    invoke-static {v2, v3}, LbI;->a(Landroid/app/Activity;F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual {p0}, Lcom/kms/KisShieldFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x3ea8f5c2    # 0.32999998f

    invoke-static {v2, v3}, LbI;->a(Landroid/app/Activity;F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_0
.end method

.method public final onDestroy()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/kms/KisShieldFragment;->b:Lkp;

    invoke-virtual {v0}, Lkp;->a()V

    .line 163
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 164
    return-void
.end method

.method public final onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 152
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 154
    invoke-static {}, LjJ;->e()Lmk;

    move-result-object v0

    invoke-interface {v0}, Lmk;->a()Lmn;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/kms/KisShieldFragment;->a(Lmn;Z)V

    .line 155
    invoke-static {}, LjJ;->e()Lmk;

    move-result-object v0

    invoke-interface {v0}, Lmk;->b()Lmo;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/kms/KisShieldFragment;->a(Lmo;Z)V

    .line 157
    invoke-direct {p0}, Lcom/kms/KisShieldFragment;->a()V

    .line 158
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 124
    const v0, 0x7f0b00e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kms/KisShieldView;

    iput-object v0, p0, Lcom/kms/KisShieldFragment;->e:Lcom/kms/KisShieldView;

    .line 125
    iget-object v0, p0, Lcom/kms/KisShieldFragment;->e:Lcom/kms/KisShieldView;

    new-instance v1, LjT;

    invoke-direct {v1, p0}, LjT;-><init>(Lcom/kms/KisShieldFragment;)V

    invoke-virtual {v0, v1}, Lcom/kms/KisShieldView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v0, 0x7f0b00e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/KisShieldFragment;->d:Landroid/view/View;

    .line 134
    iget-object v0, p0, Lcom/kms/KisShieldFragment;->d:Landroid/view/View;

    new-instance v1, LjU;

    invoke-direct {v1, p0}, LjU;-><init>(Lcom/kms/KisShieldFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    return-void
.end method
