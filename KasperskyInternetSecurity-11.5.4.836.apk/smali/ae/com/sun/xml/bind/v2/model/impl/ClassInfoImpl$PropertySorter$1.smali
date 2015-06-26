.class Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter$1;
.super Ljava/util/AbstractList;
.source "ClassInfoImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;->checkUnusedProperties()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;)V
    .locals 0

    .prologue
    .line 549
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter$1;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter.1;"
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter$1;->this$1:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 549
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter$1;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter.1;"
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter$1;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 551
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter$1;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter.1;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter$1;->this$1:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;->this$0:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    # getter for: Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->properties:Lcom/sun/istack/FinalArrayList;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->access$200(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;)Lcom/sun/istack/FinalArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sun/istack/FinalArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 555
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter$1;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter.1;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter$1;->this$1:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;->this$0:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    # getter for: Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->properties:Lcom/sun/istack/FinalArrayList;
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->access$200(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;)Lcom/sun/istack/FinalArrayList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/istack/FinalArrayList;->size()I

    move-result v0

    return v0
.end method
