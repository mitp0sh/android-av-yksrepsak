.class public LoZ;
.super LoY;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, LoZ;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LoZ;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 12
    sget-object v0, LoZ;->a:Ljava/lang/String;

    sget-object v1, Lcom/kms/issues/IssueType;->Warning:Lcom/kms/issues/IssueType;

    const v2, 0x7f070081

    const/4 v3, -0x1

    invoke-direct {p0, v0, v1, v2, v3}, LoY;-><init>(Ljava/lang/String;Lcom/kms/issues/IssueType;II)V

    .line 13
    return-void
.end method

.method public static a(Z)LoZ;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 17
    if-nez p0, :cond_0

    .line 18
    invoke-static {}, LjJ;->d()Ltg;

    move-result-object v1

    invoke-interface {v1}, Ltg;->a()LsW;

    move-result-object v1

    invoke-interface {v1}, LsW;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 24
    :cond_0
    :goto_0
    return-object v0

    .line 21
    :cond_1
    new-instance v0, LoZ;

    invoke-direct {v0}, LoZ;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public final c()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 30
    invoke-static {}, LjJ;->a()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f070080

    invoke-virtual {v0, v1}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 40
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/UiEventType;->OpenAntiphishingSettings:Lcom/kms/UiEventType;

    invoke-virtual {v1}, Lcom/kms/UiEventType;->newEvent()Lkk;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 41
    return-void
.end method
