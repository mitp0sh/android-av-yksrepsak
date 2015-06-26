.class public interface abstract Lcom/sun/istack/localization/Localizable;
.super Ljava/lang/Object;
.source "Localizable.java"


# static fields
.field public static final NOT_LOCALIZABLE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/String;

    const-string v1, "\u0000"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/istack/localization/Localizable;->NOT_LOCALIZABLE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getArguments()[Ljava/lang/Object;
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract getResourceBundleName()Ljava/lang/String;
.end method
