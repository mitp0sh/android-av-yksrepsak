.class public Lpo;
.super LoY;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lpo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lpo;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 13
    sget-object v0, Lpo;->a:Ljava/lang/String;

    sget-object v1, Lcom/kms/issues/IssueType;->Warning:Lcom/kms/issues/IssueType;

    const v2, 0x7f070077

    const/4 v3, -0x1

    invoke-direct {p0, v0, v1, v2, v3}, LoY;-><init>(Ljava/lang/String;Lcom/kms/issues/IssueType;II)V

    .line 14
    return-void
.end method

.method public static a()Lpo;
    .locals 2

    .prologue
    .line 18
    invoke-static {}, LjJ;->g()Lde;

    move-result-object v0

    .line 20
    invoke-interface {v0}, Lde;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lde;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    invoke-interface {v0}, Lde;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lpo;

    invoke-direct {v0}, Lpo;-><init>()V

    .line 26
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final c()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 31
    invoke-static {}, LjJ;->a()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f070076

    invoke-virtual {v0, v1}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 41
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/UiEventType;->ShowGpsDisabledDialog:Lcom/kms/UiEventType;

    invoke-virtual {v1}, Lcom/kms/UiEventType;->newEvent()Lkk;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 42
    return-void
.end method
