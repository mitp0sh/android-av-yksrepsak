.class public Lho;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LgH;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lho;->a:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lho;->b:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lho;->c:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lho;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lho;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lho;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method
