.class final Lhq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:LhF;

.field private b:LhT;

.field private c:LhS;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static a(Lid;LhC;)Lhq;
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lhq;

    invoke-direct {v0}, Lhq;-><init>()V

    .line 22
    invoke-direct {v0, p0, p1}, Lhq;->b(Lid;LhC;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 23
    const/4 v0, 0x0

    .line 25
    :cond_0
    return-object v0
.end method

.method private b(Lid;LhC;)Z
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x0

    .line 30
    new-instance v1, LhF;

    invoke-direct {v1}, LhF;-><init>()V

    iput-object v1, p0, Lhq;->a:LhF;

    .line 32
    invoke-interface {p2}, LhC;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lhq;->a:LhF;

    invoke-interface {p1, v1, v2}, Lid;->a(Ljava/lang/String;Lie;)Lic;

    move-result-object v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    iget-object v0, p0, Lhq;->a:LhF;

    invoke-virtual {v0, v1}, LhF;->a(Lic;)LhI;

    move-result-object v0

    check-cast v0, LhT;

    iput-object v0, p0, Lhq;->b:LhT;

    .line 36
    iget-object v0, p0, Lhq;->b:LhT;

    const-string v1, "com.kavsdk.antivirus.Watchdog"

    invoke-virtual {v0, v1}, LhT;->a(Ljava/lang/String;)LhJ;

    move-result-object v0

    check-cast v0, LhS;

    iput-object v0, p0, Lhq;->c:LhS;

    .line 37
    const/4 v0, 0x1

    .line 40
    :cond_0
    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lhq;->c:LhS;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lhq;->c:LhS;

    invoke-virtual {v0}, LhS;->a()V

    .line 51
    :cond_0
    iget-object v0, p0, Lhq;->b:LhT;

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lhq;->b:LhT;

    invoke-virtual {v0}, LhT;->a()V

    .line 55
    :cond_1
    iget-object v0, p0, Lhq;->a:LhF;

    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Lhq;->a:LhF;

    invoke-virtual {v0}, LhF;->a()V

    .line 58
    :cond_2
    return-void
.end method

.method protected final finalize()V
    .locals 0

    .prologue
    .line 44
    invoke-virtual {p0}, Lhq;->a()V

    .line 45
    return-void
.end method
