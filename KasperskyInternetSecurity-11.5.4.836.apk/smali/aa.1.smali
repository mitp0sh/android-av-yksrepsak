.class public final Laa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;I)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Laa;->a:I

    .line 18
    iput-object p2, p0, Laa;->c:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Laa;->d:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Laa;->e:Ljava/lang/String;

    .line 21
    iput-object p5, p0, Laa;->f:Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    .line 22
    iput p6, p0, Laa;->b:I

    .line 23
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Laa;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Laa;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Laa;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Laa;->f:Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    return-object v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Laa;->a:I

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Laa;->b:I

    return v0
.end method
