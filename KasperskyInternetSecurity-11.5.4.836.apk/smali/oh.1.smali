.class public Loh;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/kms/UiEventType;

.field private c:Loj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Loh;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Loh;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 23
    new-instance v0, Loi;

    invoke-direct {v0, p0}, Loi;-><init>(Loh;)V

    iput-object v0, p0, Loh;->c:Loj;

    return-void
.end method

.method static synthetic a(Loh;)Lcom/kms/UiEventType;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Loh;->b:Lcom/kms/UiEventType;

    return-object v0
.end method

.method public static a(Landroid/support/v4/app/FragmentManager;Lcom/kms/UiEventType;)V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Loh;

    invoke-direct {v0}, Loh;-><init>()V

    .line 58
    invoke-direct {v0, p1}, Loh;->a(Lcom/kms/UiEventType;)V

    .line 59
    sget-object v1, Loh;->a:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Loh;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method private a(Lcom/kms/UiEventType;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Loh;->b:Lcom/kms/UiEventType;

    .line 64
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 37
    if-eqz p1, :cond_0

    const-string v0, "UiEvent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const-string v0, "UiEvent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/kms/UiEventType;->valueOf(Ljava/lang/String;)Lcom/kms/UiEventType;

    move-result-object v0

    iput-object v0, p0, Loh;->b:Lcom/kms/UiEventType;

    .line 42
    :cond_0
    new-instance v0, LoN;

    invoke-virtual {p0}, Loh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, LoN;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-virtual {p0}, Loh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Loh;->c:Loj;

    invoke-static {v1, v3, p0}, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a(Landroid/content/Context;Loj;Landroid/support/v4/app/DialogFragment;)Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    move-result-object v1

    move v3, v2

    move v4, v2

    move v5, v2

    .line 44
    invoke-virtual/range {v0 .. v5}, LoN;->a(Landroid/view/View;IIII)LoN;

    .line 45
    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Loh;->b:Lcom/kms/UiEventType;

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "UiEvent"

    iget-object v1, p0, Loh;->b:Lcom/kms/UiEventType;

    invoke-virtual {v1}, Lcom/kms/UiEventType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 54
    return-void
.end method
