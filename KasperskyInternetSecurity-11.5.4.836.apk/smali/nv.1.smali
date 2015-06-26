.class public final Lnv;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Lnz;

.field private c:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lnv;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lnv;->a:I

    return v0
.end method

.method static synthetic a(Lnv;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lnv;->c:Landroid/widget/Button;

    return-object p1
.end method

.method private a()LoM;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-virtual {p0}, Lnv;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f03005e

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 46
    const v0, 0x7f0b0109

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 48
    iget v2, p0, Lnv;->a:I

    packed-switch v2, :pswitch_data_0

    .line 59
    const-string v0, "kitkat_warning_dialog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown dialog type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lnv;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kms/kmsshared/KMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 102
    :goto_0
    return-object v0

    .line 52
    :pswitch_0
    const v2, 0x7f0704ad

    .line 53
    const v1, 0x7f0704ab

    .line 63
    :goto_1
    new-instance v4, LoN;

    invoke-virtual {p0}, Lnv;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, LoN;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, LoN;->b(Z)LoN;

    move-result-object v4

    invoke-virtual {v4, v2}, LoN;->a(I)LoN;

    move-result-object v2

    invoke-virtual {v2, v1}, LoN;->b(I)LoN;

    move-result-object v1

    invoke-virtual {v1, v3}, LoN;->a(Landroid/view/View;)LoN;

    move-result-object v1

    const v2, 0x7f0704b0

    new-instance v3, Lnx;

    invoke-direct {v3, p0}, Lnx;-><init>(Lnv;)V

    invoke-virtual {v1, v2, v3}, LoN;->a(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v1

    const v2, 0x7f0704af

    new-instance v3, Lnw;

    invoke-direct {v3, p0}, Lnw;-><init>(Lnv;)V

    invoke-virtual {v1, v2, v3}, LoN;->b(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v1

    invoke-virtual {v1}, LoN;->b()LoM;

    move-result-object v1

    .line 93
    new-instance v2, Lny;

    invoke-direct {v2, p0, v0}, Lny;-><init>(Lnv;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v2}, LoM;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    move-object v0, v1

    .line 102
    goto :goto_0

    .line 56
    :pswitch_1
    const v2, 0x7f0704ae

    .line 57
    const v1, 0x7f0704ac

    .line 58
    goto :goto_1

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;)V
    .locals 3

    .prologue
    .line 106
    instance-of v0, p2, Lnz;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target fragment must implement KitKatWarningDialogCallback interface"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    new-instance v0, Lnv;

    invoke-direct {v0}, Lnv;-><init>()V

    .line 111
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 112
    const-string v2, "kitkat_warning_dialog_type"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 113
    invoke-virtual {v0, v1}, Lnv;->setArguments(Landroid/os/Bundle;)V

    .line 114
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lnv;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 115
    const-string v1, "kitkat_warning_dialog"

    invoke-virtual {v0, p0, v1}, Lnv;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method static synthetic b(Lnv;)Lnz;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lnv;->b:Lnz;

    return-object v0
.end method

.method static synthetic c(Lnv;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lnv;->c:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lnv;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "kitkat_warning_dialog_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnv;->a:I

    .line 40
    invoke-virtual {p0}, Lnv;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lnz;

    iput-object v0, p0, Lnv;->b:Lnz;

    .line 41
    return-void
.end method

.method public final synthetic onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lnv;->a()LoM;

    move-result-object v0

    return-object v0
.end method
