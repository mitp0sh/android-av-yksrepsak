.class public Lpd;
.super LoY;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lpd;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lpd;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 11
    sget-object v0, Lpd;->a:Ljava/lang/String;

    sget-object v1, Lcom/kms/issues/IssueType;->Critical:Lcom/kms/issues/IssueType;

    const v2, 0x7f070075

    const/4 v3, -0x1

    invoke-direct {p0, v0, v1, v2, v3}, LoY;-><init>(Ljava/lang/String;Lcom/kms/issues/IssueType;II)V

    .line 12
    return-void
.end method

.method public static a(Ljava/lang/String;)Lpd;
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lpd;

    invoke-direct {v0}, Lpd;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final c()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 20
    invoke-static {}, LjJ;->a()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f070074

    invoke-virtual {v0, v1}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

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
    invoke-static {}, LjJ;->j()Lwz;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lwz;->b(Z)V

    .line 31
    return-void
.end method
