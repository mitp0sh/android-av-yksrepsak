.class public abstract LrP;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LrV;


# instance fields
.field private final a:Ljava/lang/String;

.field private volatile b:Z

.field private c:LrT;

.field private d:LrU;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, LrP;->b:Z

    .line 34
    iput-object p1, p0, LrP;->a:Ljava/lang/String;

    .line 35
    return-void
.end method

.method private a(Z)V
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, LrP;->b:Z

    .line 84
    return-void
.end method


# virtual methods
.method public a(LrT;)V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    invoke-direct {p0, v0}, LrP;->a(Z)V

    .line 75
    return-void
.end method

.method public a(LrT;LrU;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, LrP;->c:LrT;

    .line 40
    iput-object p2, p0, LrP;->d:LrU;

    .line 41
    return-void
.end method

.method public b(LrT;)V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0}, LrP;->a(Z)V

    .line 80
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, LrP;->b:Z

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, LrP;->a:Ljava/lang/String;

    return-object v0
.end method
