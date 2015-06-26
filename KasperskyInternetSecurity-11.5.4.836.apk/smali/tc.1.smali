.class public final Ltc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:I

.field private c:Ljava/lang/String;

.field private d:LsX;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0, v0, v1, v1}, Ltc;-><init>(ZILjava/lang/String;LsX;)V

    .line 11
    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;LsX;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean p1, p0, Ltc;->a:Z

    .line 16
    iput p2, p0, Ltc;->b:I

    .line 17
    iput-object p3, p0, Ltc;->c:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Ltc;->d:LsX;

    .line 19
    return-void
.end method


# virtual methods
.method public final a(ZILjava/lang/String;LsX;)V
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Ltc;->a:Z

    .line 24
    iput p2, p0, Ltc;->b:I

    .line 25
    iput-object p3, p0, Ltc;->c:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Ltc;->d:LsX;

    .line 27
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Ltc;->a:Z

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Ltc;->b:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Ltc;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()LsX;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Ltc;->d:LsX;

    return-object v0
.end method
