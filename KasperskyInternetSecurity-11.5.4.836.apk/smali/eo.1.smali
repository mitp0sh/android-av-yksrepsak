.class public final Leo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Leo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p2, p0, Leo;->a:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Leo;->b:Ljava/lang/String;

    .line 12
    iput-object p1, p0, Leo;->c:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Leo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Leo;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Leo;->d:Leo;

    .line 35
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Leo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Leo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Leo;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Leo;->d:Leo;

    return-object v0
.end method
