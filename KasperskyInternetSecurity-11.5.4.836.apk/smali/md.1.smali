.class public Lmd;
.super LoY;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lmd;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmd;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 20
    sget-object v0, Lmd;->a:Ljava/lang/String;

    sget-object v1, Lcom/kms/issues/IssueType;->Critical:Lcom/kms/issues/IssueType;

    const v2, 0x7f070085

    const/4 v3, -0x1

    invoke-direct {p0, v0, v1, v2, v3}, LoY;-><init>(Ljava/lang/String;Lcom/kms/issues/IssueType;II)V

    .line 21
    return-void
.end method

.method public static a()Lps;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-static {}, LjJ;->d()Ltg;

    move-result-object v1

    invoke-interface {v1}, Ltg;->a()LsW;

    move-result-object v1

    invoke-interface {v1}, LsW;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    invoke-static {}, LjJ;->e()Lmk;

    move-result-object v1

    invoke-interface {v1}, Lmk;->h()Lcom/kms/antivirus/MonitorMode;

    move-result-object v1

    sget-object v2, Lcom/kms/antivirus/MonitorMode;->Disabled:Lcom/kms/antivirus/MonitorMode;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    .line 37
    :goto_0
    if-eqz v1, :cond_0

    new-instance v0, Lmd;

    invoke-direct {v0}, Lmd;-><init>()V

    .line 39
    :cond_0
    return-object v0

    .line 36
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final d()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 30
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/UiEventType;->ShowAntivirusMonitorModeDialog:Lcom/kms/UiEventType;

    invoke-virtual {v1}, Lcom/kms/UiEventType;->newEvent()Lkk;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 31
    return-void
.end method
