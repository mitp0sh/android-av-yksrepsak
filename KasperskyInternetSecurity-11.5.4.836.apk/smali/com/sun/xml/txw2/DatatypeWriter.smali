.class public interface abstract Lcom/sun/xml/txw2/DatatypeWriter;
.super Ljava/lang/Object;
.source "DatatypeWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final BUILTIN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/xml/txw2/DatatypeWriter",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/sun/xml/txw2/DatatypeWriter$1;

    invoke-direct {v0}, Lcom/sun/xml/txw2/DatatypeWriter$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sun/xml/txw2/DatatypeWriter;->BUILTIN:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abstract getType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TDT;>;"
        }
    .end annotation
.end method

.method public abstract print(Ljava/lang/Object;Lcom/sun/xml/txw2/NamespaceResolver;Ljava/lang/StringBuilder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDT;",
            "Lcom/sun/xml/txw2/NamespaceResolver;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation
.end method
