.class public Lcom/amazonaws/transform/MapEntry;
.super Ljava/lang/Object;
.source "MapEntry.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    .local p0, "this":Lcom/amazonaws/transform/MapEntry;, "Lcom/amazonaws/transform/MapEntry<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/amazonaws/transform/MapEntry;, "Lcom/amazonaws/transform/MapEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/amazonaws/transform/MapEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/amazonaws/transform/MapEntry;, "Lcom/amazonaws/transform/MapEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/amazonaws/transform/MapEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/amazonaws/transform/MapEntry;, "Lcom/amazonaws/transform/MapEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iput-object p1, p0, Lcom/amazonaws/transform/MapEntry;->key:Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/amazonaws/transform/MapEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcom/amazonaws/transform/MapEntry;, "Lcom/amazonaws/transform/MapEntry<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lcom/amazonaws/transform/MapEntry;->value:Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/amazonaws/transform/MapEntry;->value:Ljava/lang/Object;

    return-object v0
.end method
