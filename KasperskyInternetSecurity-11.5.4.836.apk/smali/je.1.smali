.class public Lje;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Z

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lje;->a:Z

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lje;->a:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lje;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lje;->c:Ljava/lang/String;

    return-object v0
.end method
